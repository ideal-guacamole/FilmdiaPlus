package daoImpl;

import dao.FilmDataDao;
import entityPO.Film;
import entityPO.FilmDB;
import entityPO.TrailerClick;
import entityPO.UpdateFilm;
import entityVO.Restriction;
import enumtype.FilmType;
import enumtype.ScoreSort;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.time.LocalDate;
import java.util.*;

/**
 * Created by mac on 2017/5/12.
 */
@Repository("filmDataDao")
public class FilmDataDaoImpl implements FilmDataDao{

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.openSession();
    }

    private List<String> countries = Arrays.asList("USA","UK","Japan","France","Canada","Australia","India");

    class TransferTime{
        LocalDate start;
        LocalDate end;

        public TransferTime(LocalDate start, LocalDate end) {
            this.start = start;
            this.end = end;
        }

        public LocalDate getStart() {
            return start;
        }

        public void setStart(LocalDate start) {
            this.start = start;
        }

        public LocalDate getEnd() {
            return end;
        }

        public void setEnd(LocalDate end) {
            this.end = end;
        }
    }

    @Override
    public List<Film> getLibrary(int location, int number) {
        Session session = getSession();
        Query q = session.createQuery("from FilmDB");
        q.setMaxResults(number);
        q.setFirstResult(location);//注意从0开始
        List<FilmDB> filmDBList = q.getResultList();
        session.close();
        List<Film> filmList = new ArrayList<>();
        for(FilmDB filmDB :filmDBList )
            filmList.add(new Film(filmDB));

        return filmList;
    }

    @Override
    public long getLibrarySize() {
        Session session = getSession();
        Query q = session.createQuery("select count(*) from FilmDB ");
        long result = (long)q.getSingleResult();
        session.close();
        return result;
    }

    @Override
    public int getLibraryTotalPage(int number) {
        int temp = (int)getLibrarySize();
        if(temp % number == 0)
            return temp / number;
        else
            return temp / number + 1;
    }

    @Override
    public List<Film> getFilmByType(FilmType filmType) {
        Session session = getSession();
        String hql;
        if(filmType.equals(FilmType.Normal) || filmType.equals(FilmType.Top250))
            hql = "from FilmDB f where f.filmType = :filmType order by score desc";
        else if (filmType.equals(FilmType.Oscar))
            hql = "from FilmDB f where f.oscar = true order by f.onTime desc";
        else
            hql = "from UpdateFilm f where f.filmType = :filmType";
        Query q = session.createQuery(hql);
        if(!filmType.equals(FilmType.Oscar))
            q.setParameter("filmType",filmType);
        List<FilmDB> filmDBList = new ArrayList<>();

        if(hql.contains("UpdateFilm")){
            List<UpdateFilm> updateFilmList = q.getResultList();
            for(UpdateFilm updateFilm : updateFilmList)
                filmDBList.add(new FilmDB(updateFilm));
        }else {
            filmDBList = q.getResultList();
        }

        session.close();

        List<Film> filmList = new ArrayList<>();
        for(FilmDB filmDB :filmDBList )
            filmList.add(new Film(filmDB));

        return filmList;
    }

    @Override
    public List<Film> getFilmByRestriction(int location, int number, Restriction restriction) {
        TransferTime time = processTheDate(restriction.getTime());
        LocalDate start = time.getStart();
        LocalDate end = time.getEnd();

        String country;
        String tag;
        if(restriction.getCountry() != null)
            country = restriction.getCountry();
        else
            country = "%";
        if(restriction.getTag() != null)
            tag = "%" + restriction.getTag() + "%";
        else
            tag = "%";

        Session session = getSession();
        String hql;
        if(restriction.getCountry() == null ||!restriction.getCountry().equals("Others"))
            hql = "from FilmDB f where f.country like :country and f.tags like :tag and f.onTime >= :start and f.onTime <= :ending order by f.score";
        else
            hql = "from FilmDB f where f.country not in :country and f.tags like :tag and f.onTime >= :start and f.onTime <= :ending order by f.score";
        if( restriction.getScoreSort() == null || restriction.getScoreSort().equals(ScoreSort.Descend) )
            hql +=" desc ";
        else
            hql +=" asc ";
        Query q = session.createQuery(hql);
        if(restriction.getCountry() == null ||!restriction.getCountry().equals("Others"))
            q.setParameter("country",country);
        else
            q.setParameterList("country", countries);
        q.setParameter("tag",tag);
        q.setParameter("start",start);
        q.setParameter("ending",end);
        q.setMaxResults(number);
        q.setFirstResult(location);

        List<Film> list = q.getResultList();
        session.close();
        return list;
    }

    @Override
    public int getFilmTotalPageByRestriction(int number, Restriction restriction) {
        TransferTime time = processTheDate(restriction.getTime());
        LocalDate start = time.getStart();
        LocalDate end = time.getEnd();

        String country;
        String tag;
        if(restriction.getCountry() != null)
            country = restriction.getCountry();
        else
            country = "%";
        if(restriction.getTag() != null)
            tag = "%" + restriction.getTag() + "%";
        else
            tag = "%";

        Session session = getSession();
        Query q;
        if(restriction.getCountry() == null ||!restriction.getCountry().equals("Others")) {
            q = session.createQuery("select count(*) from FilmDB f where f.country like :country and f.tags like :tag and f.onTime >= :start and f.onTime <= :ending");
            q.setParameter("country", country);
        }else {
            q = session.createQuery("select count(*) from FilmDB f where f.country not in :country and f.tags like :tag and f.onTime >= :start and f.onTime <= :ending");
            q.setParameterList("country", countries);
        }
        q.setParameter("tag",tag);
        q.setParameter("start",start);
        q.setParameter("ending",end);

        long totalNumber = (long)q.getSingleResult();
        session.close();

        int temp = (int)totalNumber;
        if(temp % number == 0)
            return temp / number;
        else
            return temp / number + 1;
    }

    @Override
    public Film getFilm(int filmID) {
        Session session = getSession();
        Query q = session.createQuery("from FilmDB f where f.filmID = :id");
        q.setParameter("id",filmID);
        FilmDB filmDB = (FilmDB) q.getSingleResult();
        session.close();
        return new Film(filmDB);
    }

    @Override
    public Film getFilm(String imdb_filmID) {
        Session session = getSession();
        Query q = session.createQuery("from FilmDB f where f.imdb_filmID = :id");
        q.setParameter("id",imdb_filmID);
        if(q.getResultList().size() == 0) {
            session.close();
            return null;
        }
        FilmDB filmDB = (FilmDB) q.getSingleResult();
        session.close();
        return new Film(filmDB);
    }

    @Override
    public Film getFilmFromUpdate(int filmID) {
        Session session = getSession();
        Query q = session.createQuery("from UpdateFilm f where f.filmID = :id");
        q.setParameter("id",filmID);
        UpdateFilm updateFilm = (UpdateFilm) q.getSingleResult();
        FilmDB filmDB = new FilmDB(updateFilm);
        session.close();
        return new Film(filmDB);
    }

    @Override
    public UpdateFilm getFilmFromUpdate(String imdb_filmID) {
        Session session = getSession();
        Query q = session.createQuery("from UpdateFilm f where f.imdb_filmID = :id");
        q.setParameter("id",imdb_filmID);
        UpdateFilm updateFilm = (UpdateFilm) q.getSingleResult();
        session.close();
        return updateFilm;
    }

    @Override
    public List<Film> getFilms(String filmName) {
        Session session = getSession();
        Query q = session.createQuery("from FilmDB f where f.name like :name");
        q.setParameter("name", "%"+filmName+"%");
        q.setMaxResults(50);
        List<FilmDB> filmDBList = q.getResultList();
        session.close();

        List<Film> filmList = new ArrayList<>();
        for(FilmDB filmDB :filmDBList )
            filmList.add(new Film(filmDB));

        return filmList;
    }

    @Override
    public List<Film> getFilmByTag(String tag) {
        Session session = getSession();
        Query q = session.createQuery("from FilmDB f where f.tags like :tag");
        q.setParameter("tag", "%"+tag+"%");
        List<FilmDB> filmDBList = q.getResultList();
        session.close();

        List<Film> filmList = new ArrayList<>();
        for(FilmDB filmDB :filmDBList )
            filmList.add(new Film(filmDB));

        return filmList;
    }

    @Override
    public List<Film> getFilmByYear(int year) {
        Session session = getSession();
        Query q = session.createQuery("from FilmDB f where f.onTime >= :start and f.onTime <= :ending");
        LocalDate start = LocalDate.of(year,1,1);
        LocalDate ending = LocalDate.of(year,12,31);
        q.setParameter("start",start);
        q.setParameter("ending",ending);
        List<FilmDB> filmDBList = q.getResultList();

        List<Film> filmList = new ArrayList<>();
        for(FilmDB filmDB :filmDBList )
            filmList.add(new Film(filmDB));

        return filmList;
    }

    @Override
    public List<Film> getCertainScoreFilm(double score) {
        Session session = getSession();
        Query q = session.createQuery("from FilmDB f where f.score >= :score");
        q.setParameter("score",score);
        List<FilmDB> filmDBList = q.getResultList();

        List<Film> filmList = new ArrayList<>();
        for(FilmDB filmDB :filmDBList )
            filmList.add(new Film(filmDB));

        return filmList;
    }

    @Override
    public List<TrailerClick> getYouTuBeClick() {
        Session session = getSession();
        Query q = session.createQuery("from TrailerClick");
        List<TrailerClick> trailerClickList = q.getResultList();
        session.close();
        return trailerClickList;
    }

    @Override
    public String getFilmName(String imdb_filmID) {
        Session session = getSession();
        Query q = session.createQuery("select f.name from FilmDB f where f.imdb_filmID = :id");
        q.setParameter("id",imdb_filmID);
        String name = (String) q.getSingleResult();
        session.close();
        return name;
    }

    private TransferTime processTheDate(String restrictionTime){
        LocalDate start;
        LocalDate end;

        if(restrictionTime != null) {
            if (!restrictionTime.contains("s")) {
                start = LocalDate.of(Integer.parseInt(restrictionTime), 1, 1);
                end = LocalDate.of(Integer.parseInt(restrictionTime), 12, 31);
            } else {
                int digit = Integer.parseInt(restrictionTime.substring(0,2));
                if(digit == 0)
                    digit = 100;
                int startYear = 1900 + digit;
                int endYear = 1900 + digit + 10;
                start = LocalDate.of(startYear, 1, 1);
                end = LocalDate.of(endYear, 1, 1);
            }
        }else{
            start = LocalDate.of(1900,1,1);
            end = LocalDate.of(3000,1,1);
        }

        return new TransferTime(start,end);
    }
}
