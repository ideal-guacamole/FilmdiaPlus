package daoImpl;

import dao.ProducerDataDao;
import entityPO.Producer;
import entityPO.ProducerDB;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by mac on 2017/5/17.
 */
@Repository("producerDataDao")
public class ProducerDataDaoImpl implements ProducerDataDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.openSession();
    }

    @Override
    public List<Producer> getProducerInfo(List<String> imdb_producerID) {

        List<Producer> producerList = new ArrayList<>();
        ProducerDB producerDB;
        Session session = getSession();

        for(String id : imdb_producerID) {
            Query q = session.createQuery("from ProducerDB p where p.imdb_producerID = :id");
            q.setParameter("id",id);
            producerDB = (ProducerDB)q.getResultList().get(0);
            producerList.add(new Producer(producerDB));
        }

        session.close();
        return producerList;
    }
}
