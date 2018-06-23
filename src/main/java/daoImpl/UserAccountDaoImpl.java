package daoImpl;

import dao.UserAccountDao;
import encryption.DesUtils;
import entityPO.UserAccount;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;

/**
 * Created by mac on 2017/5/10.
 */
@Repository("userAccountDao")
public class UserAccountDaoImpl implements UserAccountDao {

    @Autowired
    private SessionFactory sessionFactory;

    private DesUtils desUtils = new DesUtils();

    public UserAccountDaoImpl() throws Exception {
    }

    private Session getSession(){
        return sessionFactory.openSession();
    }

    @Override
    public boolean saveUserAccount(String userName, String password) {
        Session session = getSession();
        Query q = session.createQuery("from UserAccount ua where ua.userName = :name");
        q.setParameter("name",userName);

        if(q.getResultList().size() > 0)
            return false;

        UserAccount userAccountPO = new UserAccount(userName,desUtils.en(password));
        session.beginTransaction();
        session.save(userAccountPO);
        session.getTransaction().commit();
        session.close();
        return true;
    }

    @Override
    public String getPassword(String userName) {
        Session session = getSession();
        Query q = session.createQuery("select ua.password from UserAccount ua where ua.userName = :name");
        q.setParameter("name",userName);
        if(q.getResultList().size() != 0) {
            String password = (String) q.getSingleResult();
            session.close();
            return desUtils.de(password);
        }else
            session.close();
            return null;
    }

    @Override
    public int getUserID(String userName) {
        Session session = getSession();
        Query q = session.createQuery("select ua.userID from UserAccount ua where ua.userName = :name");
        q.setParameter("name",userName);
        int userID = (int)q.getSingleResult();
        session.close();
        return userID;
    }

    @Override
    public void changePassword(String username, String password) {
        Session session = getSession();
        Query q = session.createQuery("from UserAccount ua where ua.userName = :name");
        q.setParameter("name",username);

        UserAccount userAccountPO = (UserAccount) q.getResultList().get(0);
        userAccountPO.setPassword(desUtils.en(password));

        session.beginTransaction();
        session.update(userAccountPO);
        session.getTransaction().commit();
        session.close();
    }

}
