package dao;

import entityPO.Favorite;
import entityPO.Film;
import entityPO.Review;

import java.util.List;

/**
 * Created by mac on 2017/6/1.
 */
public interface UserPersonalDao {

    /**
     * 用户添加收藏电影信息
     * @param favorite 收藏电影信息
     * @return 是否添加成功
     */
    public boolean addFavorite(Favorite favorite);

    /**
     * 用户删除已收藏电影信息
     * @param favoriteID 收藏ID
     * @return 是否删除成功
     */
    public boolean removeFavorite(int favoriteID);

    /**
     * 根据用户ID，返回该用户的全部收藏
     * @param userID 用户ID
     * @return 收藏list
     */
    public List<Favorite> getFavorite(int userID);

    /**
     * 根据tag 返回推荐电影（20个）
     * @param tag 电影标签
     * @return 电影list
     */
    public List<Film> getRecommendFilms(String tag);

    /**
     * 根据用户填写的评论，将该评论加入评论表
     * @param review 用户的评论
     * @return 是否添加成功
     */
    public boolean addPersonalReview(Review review);

    /**
     * 根据用户填写的评论，将该评论更新至评论表
     * @param review 用户的评论
     * @return 是否更新成功
     */
    public boolean updatePersonalReview(Review review);

    /**
     * 根据用户ID 返回该用户的所有个人评论
     * @param userID 用户ID
     * @return 用户个人评论list
     */
    public List<Review> getPersonalReview(int userID);
}
