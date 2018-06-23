package serviceImpl;

import dao.UserAccountDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.UserSignInService;

/**
 * Created by mac on 2017/5/10.
 */
@Service("userSignInService")
public class UserSignInServiceImpl implements UserSignInService {

    @Autowired
    private UserAccountDao userAccountDao;

    @Override
    public boolean register(String userName, String password) {
        return userAccountDao.saveUserAccount(userName,password);
    }

    @Override
    public boolean checkPassword(String userName, String password) {
        String DB_Password = userAccountDao.getPassword(userName);
        if(DB_Password == null)
            return false;
        if(DB_Password.equals(password))
            return true;
        else
            return false;
    }

    @Override
    public int getUserID(String userName) {
        return userAccountDao.getUserID(userName);
    }

    @Override
    public void changePassword(String username, String password) {
        userAccountDao.changePassword(username, password);
    }
}
