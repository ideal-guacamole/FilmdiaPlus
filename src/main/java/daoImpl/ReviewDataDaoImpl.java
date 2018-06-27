package daoImpl;

import dao.ReviewDataDao;
import entityPO.Review;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.List;

/**
 * Created by mac on 2017/5/12.
 */
@Repository("reviewDataDao")
public class ReviewDataDaoImpl implements ReviewDataDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.openSession();
    }

    @Override
    public List<Review> getReviews(String imdb_filmID) {
        Session session = getSession();
        Query q = session.createQuery("from Review r where r.imdb_filmID = :id");
        q.setParameter("id",imdb_filmID);
        q.setMaxResults(500);
        List<Review> reviewList = q.getResultList();
//        System.out.println("username:"+reviewList.get(0).getUserName());
        session.close();
        return reviewList;
    }

    @Override
    public List<Review> getReviews(String imdb_filmID, int n) {
        Session session = getSession();
        Query q = session.createQuery("from Review r where r.imdb_filmID = :id");
        q.setParameter("id",imdb_filmID);
        q.setMaxResults(n);
        List<Review> reviewList = q.getResultList();

//        q = session.createQuery("from Review r where r.imdb_filmID = :id and r.userInfo_userID != null ");
//        q.setParameter("id",imdb_filmID);
//        List<Review> userReviewList = q.getResultList();
        session.close();
//        reviewList.addAll(userReviewList);
        return reviewList;
    }

    @Override
    public long getReviewNumber(String imdb_filmID) {
        Session session = getSession();
        Query q = session.createQuery("select count(*) from Review r where r.imdb_filmID = :id");
        q.setParameter("id",imdb_filmID);
        long number = (long)q.getSingleResult();
        session.close();
        return number;
    }
}
