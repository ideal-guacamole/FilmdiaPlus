package daoImpl;

import dao.UserPersonalDao;
import entityPO.Favorite;
import entityPO.Film;
import entityPO.Review;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;
import java.util.Random;

/**
 * Created by mac on 2017/6/1.
 */
@Repository("userPersonalDao")
public class UserPersonalDaoImpl implements UserPersonalDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.openSession();
    }

    @Override
    public boolean addFavorite(Favorite favorite) {
        Session session = getSession();
        Query q = session.createQuery("from Favorite f where f.filmID = :filmID and f.userID = :userID");
        q.setParameter("filmID",favorite.getFilmID());
        q.setParameter("userID",favorite.getUserID());
        if(q.getResultList().size() > 0)
            return false;
        else {
            session.beginTransaction();
            session.save(favorite);
            session.getTransaction().commit();
            session.close();
            return true;
        }
    }

    @Override
    public boolean removeFavorite(int favoriteID) {
        Session session = getSession();
        session.beginTransaction();
        Query q = session.createQuery("delete from Favorite f where f.favoriteID = :favoriteID");
        q.setParameter("favoriteID",favoriteID);
        if(q.executeUpdate() == 1) {
            session.getTransaction().commit();
            session.close();
            return true;
        }
        else {
            session.getTransaction().commit();
            session.close();
            return false;
        }
    }

    @Override
    public List<Favorite> getFavorite(int userID) {
        Session session = getSession();
        Query q = session.createQuery("from Favorite f where f.userID = :userID");
        q.setParameter("userID",userID);
        List<Favorite> favoriteList = q.getResultList();
        session.close();
        return favoriteList;
    }

    @Override
    public List<Film> getRecommendFilms(String tag) {
        Session session = getSession();
        Query q = session.createQuery("from FilmDB f where f.tags like :tag and f.score > 6.0");
        q.setParameter("tag","%"+tag+"%");
        q.setFirstResult((int) (Math.random() * 3000));
        q.setMaxResults(10);
        List<Film> filmList = q.getResultList();
        session.close();
        return filmList;
    }


    @Override
    public boolean addPersonalReview(Review review) {
        try (Session session = getSession()) {
            session.beginTransaction();
            Query q = session.createQuery("select max(r.reviewID) from Review r");
            int nextID = (int) q.getSingleResult() + 1;
            review.setReviewID(nextID);
            review.setHelpfulness("0/0");
            session.save(review);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public boolean updatePersonalReview(Review review) {
        String imdb_filmID = review.getImdb_filmID();
        double score = review.getScore();
        String summary = review.getSummary();
        String text = review.getText();
        Session session = getSession();
        session.beginTransaction();
        Query q = session.createQuery("update Review r set summary = :summary, text = :text, score = :score " +
                "where imdb_filmID = :imdb_filmID");
        q.setParameter("summary", summary);
        q.setParameter("text", text);
        q.setParameter("score", score);
        q.setParameter("imdb_filmID", imdb_filmID);
        q.executeUpdate();
        session.getTransaction().commit();
        session.close();
        return true;
    }

    @Override
    public List<Review> getPersonalReview(int userID) {
        Session session = getSession();
        Query q = session.createQuery("from Review r where r.userInfo_userID = :userID order by r.time desc");
        q.setParameter("userID",userID);
        List<Review> reviewList = q.getResultList();
        session.close();
        return reviewList;
    }
}
