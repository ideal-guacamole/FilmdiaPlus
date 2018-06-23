package entityPO;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by mac on 2017/5/10.
 */
@Entity
public class UserAccount {
    private int userID;
    private String userName;
    private String password;

    @Id
    @GeneratedValue
    public int getUserID() {
        return userID;
    }

    public void setUserID(int id) {
        this.userID = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserAccount() {
    }

    public UserAccount(String userName, String password) {
        this.userName = userName;
        this.password = password;
    }
}
