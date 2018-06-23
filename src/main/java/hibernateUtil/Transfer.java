package hibernateUtil;

import entityPO.Film;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import javax.persistence.Query;
import java.util.List;

/**
 * Created by mac on 2017/5/16.
 */
public class Transfer {

//    public static void main(String[] args) {
//
//        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder();
//        StandardServiceRegistry registry = builder.configure().build();
//        SessionFactory sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
//
//        Session session = sessionFactory.openSession();
//        Query q = session.createQuery("from Film");
////        q.setMaxResults(1);
//        List<Film> filmList = q.getResultList();
//
//
//        session.beginTransaction();
//        for(Film film :filmList){
//            String tags = "";
//            for(int i=0;i<film.getTags().size();i++) {
//                tags = tags + film.getTags().get(i);
//                if(i != film.getTags().size() -1)
//                    tags = tags + "/";
//            }
//
//            String keys = "";
//            for(int i=0;i<film.getScriptKeyWords().size();i++) {
//                keys = keys + film.getScriptKeyWords().get(i);
//                if(i != film.getScriptKeyWords().size() -1)
//                    keys = keys + "/";
//            }
//
//            String actors = "";
//            for(int i=0;i<film.getActors().size();i++) {
//                actors = actors + film.getActors().get(i);
//                if(i != film.getActors().size() -1)
//                    actors = actors + "/";
//            }
//
//            String directors = "";
//            for(int i=0;i<film.getDirectors().size();i++) {
//                directors = directors + film.getDirectors().get(i);
//                if(i != film.getDirectors().size() -1)
//                    directors = directors + "/";
//            }
//
//
//            session.save(new FilmPO(film.getImdb_filmID(),film.getName(),film.getScore(),film.getRatingNum(),film.getOnTime(),tags,keys,directors,actors,film.getLanguage(),film.getCountry(),
//                    film.getSummary(),film.getTagLine(),film.getPosterURL(),film.getBannerPictureURL(),film.getFilmWatchURL(), film.getFilmType()));
//        }
//
//        session.getTransaction().commit();
//        session.close();
//        sessionFactory.close();



//    }
}
