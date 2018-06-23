package handler;

import entityPO.Favorite;
import entityPO.Film;
import entityPO.Review;
import entityVO.ReviewVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.UserFunctionService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by mac on 2017/6/1.
 */
@Controller
@RequestMapping("/user")
public class UserFunctionHandler {

    @Autowired
    private UserFunctionService userFunctionService;

    @RequestMapping("/addFavorite")
    public @ResponseBody Map<String,String> addFavorite(@RequestBody Favorite favorite){
        Map<String,String> map = new HashMap<>();
        if(userFunctionService.addFavorite(favorite))
            map.put("result","success");
        else
            map.put("result","fail");
        return map;
    }

    @RequestMapping("/removeFavorite")
    public @ResponseBody Map<String,String> removeFavorite(@RequestBody int favoriteID){
        Map<String,String> map = new HashMap<>();
        if(userFunctionService.removeFavorite(favoriteID))
            map.put("result","success");
        else
            map.put("result","fail");
        return map;
    }

    @RequestMapping("/getFavorite")
    public @ResponseBody List<Favorite> getFavorite(@RequestBody int userID){
        return userFunctionService.getFavorite(userID);
    }

    @RequestMapping("/getRecommendFilms")
    public @ResponseBody List<Film> getRecommendFilms(@RequestBody int userID){
        return userFunctionService.getRecommendFilms(userID);
    }

    @RequestMapping("/updatePersonalReview")
    public @ResponseBody Map<String,String> updatePersonalReview(@RequestBody ReviewVO reviewVO){
        Map<String,String> map = new HashMap<>();
        if(userFunctionService.updatePersonalReview(new Review(reviewVO)))
            map.put("result","success");
        else
            map.put("result","fail");
        return map;
    }

    @RequestMapping("/addPersonalReview")
    public @ResponseBody Map<String,String> addPersonalReview(@RequestBody ReviewVO reviewVO){
        Map<String,String> map = new HashMap<>();
        if(userFunctionService.addPersonalReview(new Review(reviewVO)))
            map.put("result","success");
        else
            map.put("result","fail");
        return map;
    }

    @RequestMapping("/getPersonalReview")
    public @ResponseBody List<Review> getPersonalReview(@RequestBody int userID){
        return userFunctionService.getPersonalReview(userID);
    }
}
