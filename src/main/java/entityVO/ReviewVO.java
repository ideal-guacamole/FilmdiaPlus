package entityVO;

import entityPO.Review;

/**
 * Created by mac on 2017/3/20.
 */
public class ReviewVO {
    private int reviewID;
    private String time;
    private String helpfulness;
    private String summary;
    private String text;
    private String imdb_filmID;
    private String userName;
    private String userCountry;
    private double score;
    private Integer userInfo_userID;

    public ReviewVO() {
    }

    public ReviewVO(Review review) {
        this.reviewID = review.getReviewID();
        this.helpfulness = review.getHelpfulness();
        this.summary = review.getSummary();
        this.text = review.getText();
        this.imdb_filmID = review.getImdb_filmID();
        this.userName = review.getUserName();
        this.userCountry = review.getUserCountry();
        this.score = review.getScore();
        this.userInfo_userID = review.getUserInfo_userID();
        if(review.getTime()!=null)
            this.time = review.getTime().toString();
    }

    public int getReviewID() {
        return reviewID;
    }

    public void setReviewID(int reviewID) {
        this.reviewID = reviewID;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getHelpfulness() {
        return helpfulness;
    }

    public void setHelpfulness(String helpfulness) {
        this.helpfulness = helpfulness;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getImdb_filmID() {
        return imdb_filmID;
    }

    public void setImdb_filmID(String imdb_filmID) {
        this.imdb_filmID = imdb_filmID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserCountry() {
        return userCountry;
    }

    public void setUserCountry(String userCountry) {
        this.userCountry = userCountry;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public Integer getUserInfo_userID() {
        return userInfo_userID;
    }

    public void setUserInfo_userID(Integer userInfo_userID) {
        this.userInfo_userID = userInfo_userID;
    }
}