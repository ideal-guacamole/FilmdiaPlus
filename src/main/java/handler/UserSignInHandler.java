package handler;

import entityVO.UserAccount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import service.UserSignInService;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by mac on 2017/5/10.
 */
@Controller
@RequestMapping("/user")
@SessionAttributes(value = {"userAccount"})
public class UserSignInHandler {

    @Autowired
    private UserSignInService userSignInService;

    @RequestMapping(value = "/signIn")
    public @ResponseBody Map<String,String> signIn(UserAccount userAccount,Map<String,Object> map){
        String userName = userAccount.getUserName();
        String password = userAccount.getPassword();
        boolean check = userSignInService.checkPassword(userName,password);
        Map<String,String> back = new HashMap<>();
        if(check) {
            int userID = userSignInService.getUserID(userName);
            userAccount.setUserID(userID);
            back.put("result","success");
            map.put("userAccount",userAccount);
        }
        else {
            userAccount.setUserID(0);
            userAccount.setUserName("");
            userAccount.setPassword("");
            back.put("result","fail");
            map.put("userAccount",userAccount);
        }
        return back;
    }

    @RequestMapping(value = "/signUp")
    public @ResponseBody Map<String,String> signUp(UserAccount userAccount,Map<String,Object> map){
        boolean check = userSignInService.register(userAccount.getUserName(),userAccount.getPassword());
        Map<String,String> back = new HashMap<>();
        if(check) {
            int userID = userSignInService.getUserID(userAccount.getUserName());
            userAccount.setUserID(userID);
            back.put("result", "success");
            map.put("userAccount",userAccount);
        }
        else
            back.put("result","fail");
        return back;
    }

    @RequestMapping(value = "/signOut")
    public void signOut(Map<String,Object> map){
        UserAccount account = new UserAccount();
        account.setUserID(0);
        account.setUserName("");
        account.setPassword("");
        map.put("userAccount",account);
    }

    @RequestMapping(value = "/changePassword")
    public @ResponseBody Map<String,String> changePassword(String username, String originalPassword, String newPassword) {
        boolean check = userSignInService.checkPassword(username, originalPassword);
        Map<String,String> back = new HashMap<>();
        if(check) {
            userSignInService.changePassword(username, newPassword);
            back.put("result","success");
        }
        else {
            back.put("result","fail");
        }
        return back;
    }
}
