package service;

import entityPO.Review;
import enumtype.ReviewSort;

import java.util.List;
import java.util.Map;

/**
 * Created by mac on 2017/5/12.
 */
public interface ReviewSearchService {
    /**
     * 根据电影ID得到对应的评论
     * @param imdb_filmID 电影ID
     * @return 评论List
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
     * 按条件排序相关电影的评论
     * @param imdb_filmID 电影ID
     * @param reviewSort 排序方式
     * @return 评论List
     */
    public List<Review> getReviews(String imdb_filmID, ReviewSort reviewSort);

    /**
     * 按条件排序相关电影的评论
     * @param imdb_filmID 电影ID
     * @param reviewSort 排序方式
     * @param n 评论数
     * @return 评论List
     */
    public List<Review> getReviews(String imdb_filmID, ReviewSort reviewSort, int n);

    /**
     * 根据电影ID得到对应评论中出现次数最多的 n 个关键字及 每个关键字
     * 出现的次数
     * @param imdb_filmID 电影ID
     * @param n n个关键字
     * @return n个关键字的Map
     */
    public Map<String,Integer> getReviewsKeyWords(String imdb_filmID, int n);

    /**
     * 根据电影ID，关键词过滤包含该关键词的评论
     * @param imdb_filmID 电影ID
     * @param keyword 关键词
     * @return 过滤后的 评论list
     */
    public List<Review> filterReviewsByKeyWord(String imdb_filmID, String keyword);

    /**
     * 根据ID取出电影评论个数
     * @param imdb_filmID 电影 imdb_ID
     * @return 该电影的评论数
     */
    public long getReviewNumber(String imdb_filmID);
}
