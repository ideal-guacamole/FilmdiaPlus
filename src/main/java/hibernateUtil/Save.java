package hibernateUtil;

import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;


/**
 * Created by mac on 2017/5/11.
 */
public class Save {

    public static void main(String[] args) {

        StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder();
        StandardServiceRegistry registry = builder.configure().build();
        SessionFactory sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();

//        Session session = sessionFactory.openSession();
//        session.beginTransaction();

//        try {
//            for(Object object:objects){
//                session.save(object);
//            }
//        }catch (Exception e){
//            System.out.println(Arrays.toString(e.getStackTrace()));
//            System.out.println(e.getMessage());
//        }
//        Film film1 = new Film();
//        Film film2 = new Film();
//        Set<Film> filmSet = new HashSet<>();
//        filmSet.add(film1);
//        filmSet.add(film2);


//        Producer producer1 = new Producer();
//        Producer producer2 = new Producer();
//        Set<Producer> producerSet = new HashSet<>();
//        producerSet.add(producer1);
//        producerSet.add(producer2);

//        producer1.setFilms(filmSet);
//        producer2.setFilms(filmSet);
//        film1.setProducers(producerSet);
//        film2.setProducers(producerSet);

//        session.save(film1);
//        session.save(film2);
//        session.save(producer1);
//        session.save(producer2);
//
//        session.getTransaction().commit();
//        session.close();
//        sessionFactory.close();
    }
}
