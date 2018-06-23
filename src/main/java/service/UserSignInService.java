package service;

/**
 * Created by mac on 2017/5/10.
 */
public interface UserSignInService {

    /**
     * 用户注册
     * @param userName 用户名
     * @param password 密码
     * @return 是否注册成功，若用户名已存在则失败
     */
    public boolean register(String userName,String password);


    /**
     * 检验用户密码是否正确
     * @param userName 用户名
     * @param password 密码
     * @return 是否正确
     */
    public boolean checkPassword(String userName,String password);

    /**
     * 根据用户名，返回用户ID
     * @param userName 用户名
     * @return 用户ID
     */
    public int getUserID(String userName);

    /**
     * 根据用户输入的新密码，修改原密码
     * @param username
     * @param password
     */
    void changePassword(String username, String password);
}
