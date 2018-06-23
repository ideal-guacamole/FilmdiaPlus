package hibernateUtil;

/**
 * Created by mac on 2017/5/16.
 */
public class Transfer2 {

//    public static void main(String[] args) {
//
//
//        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder();
//        StandardServiceRegistry registry = builder.configure().build();
//        SessionFactory sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
//
//        Session session = sessionFactory.openSession();
//        Query q = session.createQuery("from Producer ");
////                q.setMaxResults(1);
//        List<Producer> producerList = q.getResultList();
//
//
//        session.beginTransaction();
//        for (Producer producer : producerList) {
//            String films = "";
//            for (int i = 0; i < producer.getFilms().size(); i++) {
//                films = films + producer.getFilms().get(i);
//                if (i != producer.getFilms().size() - 1)
//                    films = films + "/";
//            }
//
//            session.save(new ProducerPO(producer.getImdb_producerID(),producer.getName(),producer.getProducerType(),films,producer.getImage()));
//        }
//
//        session.getTransaction().commit();
//        session.close();
//        sessionFactory.close();
//    }
}
