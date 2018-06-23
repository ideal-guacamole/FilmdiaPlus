package serviceImpl;

import dao.UserPersonalDao;
import entityPO.Favorite;
import entityPO.Film;
import entityPO.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.UserFunctionService;

import java.util.*;

/**
 * Created by mac on 2017/6/1.
 */
@Service("userFunctionService")
public class UserFunctionServiceImpl implements UserFunctionService {

    @Autowired
    private UserPersonalDao userPersonalDao;

    @Override
    public boolean addFavorite(Favorite favorite) {
        return userPersonalDao.addFavorite(favorite);
    }

    @Override
    public boolean removeFavorite(int favoriteID) {
        return userPersonalDao.removeFavorite(favoriteID);
    }

    @Override
    public List<Favorite> getFavorite(int userID) {
        return userPersonalDao.getFavorite(userID);
    }

    @Override
    public List<Film> getRecommendFilms(int userID) {
        List<Favorite> favoriteList = getFavorite(userID);

        if(favoriteList.size() == 0)
            return new ArrayList<>();

        Map<String,Integer> tagAndNum = new HashMap<>();

        for(Favorite favorite :favoriteList){
            for(String tag : favorite.getCategory().split("/")){
                if (!tagAndNum.containsKey(tag)) {
                    tagAndNum.put(tag, 1);
                } else {
                    int k = tagAndNum.get(tag) + 1;
                    tagAndNum.put(tag, k);
                }
            }
        }

        //这里将map.entrySet()转换成list
        List<Map.Entry<String,Integer>> list = new ArrayList<>(tagAndNum.entrySet());
        //然后通过比较器来实现排序
        //降序排序
        Collections.sort(list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));

        String theBestTag = list.get(0).getKey();
        return userPersonalDao.getRecommendFilms(theBestTag);
    }

    @Override
    public boolean addPersonalReview(Review review) {
        return userPersonalDao.addPersonalReview(review);
    }

    @Override
    public boolean updatePersonalReview(Review review) {
        return userPersonalDao.updatePersonalReview(review);
    }

    @Override
    public List<Review> getPersonalReview(int userID) {
        return userPersonalDao.getPersonalReview(userID);
    }
}
