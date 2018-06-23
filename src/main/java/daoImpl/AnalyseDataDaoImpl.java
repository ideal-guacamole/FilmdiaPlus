package daoImpl;

import dao.AnalyseDataDao;
import dao.FilmDataDao;
import entityPO.*;
import entityVO.Analysis;
import enumtype.ProducerType;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.*;

/**
 * Created by LWY on 2017/6/8.
 */
@Repository("analyseDataDao")
public class AnalyseDataDaoImpl implements AnalyseDataDao{

    @Autowired
    private FilmDataDao filmDataDao;

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.openSession();
    }

    @Override
    public Analysis getAnalyseData(String imdb_filmID) {
        UpdateFilm updateFilm = filmDataDao.getFilmFromUpdate(imdb_filmID);
        Session session = getSession();

        Map<String,Map<String,Integer>> actors = new HashMap<>();
        Map<String,Map<String,Integer>> directors = new HashMap<>();

        List<String> actorList = new ArrayList<>();
        Collections.addAll(actorList, updateFilm.getActors().split("/"));

        List<String> directorList = new ArrayList<>();
        Collections.addAll(directorList, updateFilm.getDirectors().split("/"));

        List<String> actorsAndDirectorsIMDB_ID = actorList;
        actorsAndDirectorsIMDB_ID.addAll(directorList);

        for(String imdb_producerID : actorsAndDirectorsIMDB_ID){
            Query queryForActor = session.createQuery("from ProducerDB p where p.imdb_producerID = :id");
            queryForActor.setParameter("id",imdb_producerID);
            List<ProducerDB> producerDBList = queryForActor.getResultList();
            Producer producer = new Producer(producerDBList.get(0));
            Map<String,Integer> films = new HashMap<>();

            for(String imdb_filmID_Producer : producer.getFilms()){
                Film temp = filmDataDao.getFilm(imdb_filmID_Producer);
                if(temp != null)
                    films.put(temp.getPosterURL(),temp.getGross());
            }

            if(producer.getProducerType().equals(ProducerType.Actor))
                actors.put(producer.getName() + "/" + producer.getImage(),films);
            else
                directors.put(producer.getName() + "/" + producer.getImage(),films);

        }

        Query query = session.createQuery("from TrailerClick t where t.imdb_filmID = :id");
        query.setParameter("id",imdb_filmID);
        List<TrailerClick> trailerClickList = query.getResultList();

        Map<LocalDate,Integer> youtubeClickTimes = new HashMap<>();
        for(TrailerClick trailerClick : trailerClickList){
            youtubeClickTimes.put(trailerClick.getUpdate_time(),trailerClick.getClick_times());
        }

        List<String> tags = new ArrayList<>();
        Collections.addAll(tags, updateFilm.getTags().split("/"));

        Analysis analysis = new Analysis(updateFilm.getFilmID(),updateFilm.getImdb_filmID(),updateFilm.getName(),updateFilm.getScore(),updateFilm.getRatingNum(),tags,
                youtubeClickTimes,actors,directors,updateFilm.getLanguage(),updateFilm.getCountry(),updateFilm.getTagLine(),updateFilm.getAward(),updateFilm.getRuntime(),updateFilm.getBudget(),
                updateFilm.getPredictGross_linear(),updateFilm.getPredictGross_linear_test(),updateFilm.getPredictGross_lasso(),updateFilm.getPredictGross_lasso_test(),
                updateFilm.getPredictGross_knn(),updateFilm.getPredictGross_knn_test(),updateFilm.getPredictGross_poly(),updateFilm.getPredictGross_poly_test());

        session.close();
        return analysis;
    }

}
