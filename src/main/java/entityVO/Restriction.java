package entityVO;

import enumtype.ScoreSort;

/**
 * Created by mac on 2017/3/22.
 */
public class Restriction {
    private String time;
    private String country;
    private String tag;
    private ScoreSort scoreSort;

    public Restriction() {
    }

    public Restriction(String time, String country, String tag, ScoreSort scoreSort) {
        this.time = time;
        this.country = country;
        this.tag = tag;
        this.scoreSort = scoreSort;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public ScoreSort getScoreSort() {
        return scoreSort;
    }

    public void setScoreSort(ScoreSort scoreSort) {
        this.scoreSort = scoreSort;
    }
}
