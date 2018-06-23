package entityPO;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

/**
 * Created by LWY on 2017/5/10.
 */
@Entity
public class Favorite {

    private int favoriteID;
    private int filmID;
    private String filmName;
    private double score;
    private String category;
    private int userID;
    private String posterURL;
    private String summary;

    @Id
    @GeneratedValue
    public int getFavoriteID() {
        return favoriteID;
    }

    public void setFavoriteID(int favoriteID) {
        this.favoriteID = favoriteID;
    }

    public int getFilmID() {
        return filmID;
    }

    public void setFilmID(int filmID) {
        this.filmID = filmID;
    }

    public String getFilmName() {
        return filmName;
    }

    public void setFilmName(String filmName) {
        this.filmName = filmName;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getPosterURL() {
        return posterURL;
    }

    public void setPosterURL(String posterURL) {
        this.posterURL = posterURL;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    @Override
    public String toString() {
        return "Favorite{" +
                "favoriteID=" + favoriteID +
                ", filmID=" + filmID +
                ", filmName='" + filmName + '\'' +
                ", score=" + score +
                ", category='" + category + '\'' +
                ", userID=" + userID +
                ", posterURL='" + posterURL + '\'' +
                ", summary='" + summary + '\'' +
                '}';
    }
}
