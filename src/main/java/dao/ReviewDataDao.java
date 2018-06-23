package dao;

import entityPO.Review;

import java.util.List;

/**
 * Created by mac on 2017/5/12.
 */
public interface ReviewDataDao {

    /**
     * 根据ID取出所有评论
     * @param imdb_filmID 电影 imdb_ID
     * @return 该电影所有评论
     */
    public List<Review> getReviews(String imdb_filmID);

    /**
     * 根据ID取出n个评论用于展示
     * @param imdb_filmID 电影 imdb_ID
     * @param n 评论数
     * @return 该电影的n个评论
     */
    public List<Review> getReviews(String imdb_filmID,int n);

    /**
     * 根据ID取出电影评论个数
     * @param imdb_filmID 电影 imdb_ID
     * @return 该电影的评论数
     */
    public long getReviewNumber(String imdb_filmID);
}
