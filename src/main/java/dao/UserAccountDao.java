package dao;

/**
 * Created by mac on 2017/5/10.
 */
public interface UserAccountDao {

    /**
     * 存储一个用户的用户名和密码
     * @param userName 用户名
     * @param password 密码
     * @return
     */
    public boolean saveUserAccount(String userName,String password);

    /**
     * 根据用户名，返回对应的密码
     * @param userName 用户
     * @return
     */
    public String getPassword(String userName);

    /**
     * 根据用户名，返回用户ID
     * @param userName 用户名
     * @return 用户ID
     */
    public int getUserID(String userName);

    /**
     * 根据用户输入的新密码，修改原来的密码
     * @param username
     * @param password
     */
    void changePassword(String username, String password);
}
