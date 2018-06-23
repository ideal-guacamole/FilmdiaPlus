package entityPO;

import entityVO.ReviewVO;

import javax.persistence.*;
import java.time.LocalDate;

/**
 * Created by mac on 2017/3/20.
 */
@Entity
public class Review {
    private int reviewID;
    private LocalDate time;
    private String helpfulness;
    private String summary;
    private String text;
    private String imdb_filmID;
    private String userName;
    private String userCountry;
    private double score;
    private Integer userInfo_userID;

    public Review() {
    }

    public Review(ReviewVO reviewVO) {
        this.reviewID = reviewVO.getReviewID();
        this.time = LocalDate.now();
        this.helpfulness = null;
        this.summary = reviewVO.getSummary();
        this.text = reviewVO.getText();
        this.imdb_filmID = reviewVO.getImdb_filmID();
        this.userName = reviewVO.getUserName();
        this.userCountry = reviewVO.getUserCountry();
        this.score = reviewVO.getScore();
        this.userInfo_userID = reviewVO.getUserInfo_userID();
    }

    @Id
    public int getReviewID() {
        return reviewID;
    }

    public void setReviewID(int db_id) {
        this.reviewID = db_id;
    }

    public LocalDate getTime() {
        return time;
    }

    public void setTime(LocalDate time) {
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

    @Column(length = 10000)
    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Column(unique = true,length = 9)
    public String getImdb_filmID() {
        return imdb_filmID;
    }

    public void setImdb_filmID(String imdb_filmID) {
        this.imdb_filmID = imdb_filmID;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    @Column(length = 50)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Column(length = 50)
    public String getUserCountry() {
        return userCountry;
    }

    public void setUserCountry(String userCountry) {
        this.userCountry = userCountry;
    }

    public Integer getUserInfo_userID() {
        return userInfo_userID;
    }

    public void setUserInfo_userID(Integer userInfo_userID) {
        this.userInfo_userID = userInfo_userID;
    }
}