package entityPO;

import enumtype.FilmType;

import javax.persistence.*;
import java.time.LocalDate;

/**
 * Created by mac on 2017/5/16.
 */
@Entity
public class FilmDB {

    private int filmID;
    private String imdb_filmID;
    private String name;
    private double score;
    private Integer ratingNum;
    private LocalDate onTime;
    private String tags;
    private String scriptKeyWords;
    private String directors;
    private String actors;
    private String language;
    private String country;
    private String summary;
    private String tagLine; //经典台词
    private String posterURL; //海报url（小张
    private String filmWatchURL; //影片观看地址
    private FilmType filmType;
    private String cast; //演员/剧中人物
    private String storyline;
    private String award;
    private int runtime;
    private String soundmix;
    private boolean Oscar; // 是否奥斯卡
    private int budget;
    private Integer worldwideGross;
    private int gross;
    private double douban_score;

    @Id
    @GeneratedValue
    public int getFilmID() {
        return filmID;
    }

    public void setFilmID(int filmID) {
        this.filmID = filmID;
    }

    @Column(unique = true,length = 9)
    public String getImdb_filmID() {
        return imdb_filmID;
    }

    public void setImdb_filmID(String imdb_filmID) {
        this.imdb_filmID = imdb_filmID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public Integer getRatingNum() {
        return ratingNum;
    }

    public void setRatingNum(Integer ratingNum) {
        this.ratingNum = ratingNum;
    }

    public LocalDate getOnTime() {
        return onTime;
    }

    public void setOnTime(LocalDate onTime) {
        this.onTime = onTime;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public String getScriptKeyWords() {
        return scriptKeyWords;
    }

    public void setScriptKeyWords(String scriptKeyWords) {
        this.scriptKeyWords = scriptKeyWords;
    }

    public String getDirectors() {
        return directors;
    }

    public void setDirectors(String directors) {
        this.directors = directors;
    }

    public String getActors() {
        return actors;
    }

    public void setActors(String actors) {
        this.actors = actors;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Column(length = 1000)
    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getTagLine() {
        return tagLine;
    }

    public void setTagLine(String tagLine) {
        this.tagLine = tagLine;
    }

    public String getPosterURL() {
        return posterURL;
    }

    public void setPosterURL(String posterURL) {
        this.posterURL = posterURL;
    }

    public String getFilmWatchURL() {
        return filmWatchURL;
    }

    public void setFilmWatchURL(String filmWatchURL) {
        this.filmWatchURL = filmWatchURL;
    }

    @Enumerated(EnumType.STRING)
    public FilmType getFilmType() {
        return filmType;
    }

    public void setFilmType(FilmType filmType) {
        this.filmType = filmType;
    }

    @Column(length = 1000)
    public String getCast() {
        return cast;
    }

    public void setCast(String cast) {
        this.cast = cast;
    }

    @Column(length = 1500)
    public String getStoryline() {
        return storyline;
    }

    public void setStoryline(String storyline) {
        this.storyline = storyline;
    }

    public String getAward() {
        return award;
    }

    public void setAward(String award) {
        this.award = award;
    }

    public int getRuntime() {
        return runtime;
    }

    public void setRuntime(int runtime) {
        this.runtime = runtime;
    }

    public String getSoundmix() {
        return soundmix;
    }

    public void setSoundmix(String soundmix) {
        this.soundmix = soundmix;
    }

    @Column(name = "Oscar")
    public boolean isOscar() {
        return Oscar;
    }

    public void setOscar(boolean oscar) {
        Oscar = oscar;
    }

    public int getBudget() {
        return budget;
    }

    public void setBudget(int budget) {
        this.budget = budget;
    }

    public Integer getWorldwideGross() {
        return worldwideGross;
    }

    public void setWorldwideGross(Integer worldwideGross) {
        this.worldwideGross = worldwideGross;
    }

    public int getGross() {
        return gross;
    }

    public void setGross(int gross) {
        this.gross = gross;
    }

    public double getDouban_score() {
        return douban_score;
    }

    public void setDouban_score(double douban_score) {
        this.douban_score = douban_score;
    }

    public FilmDB() {
    }

    public FilmDB(int filmID, String name) {
        this.filmID = filmID;
        this.name = name;
    }

    public FilmDB(UpdateFilm updateFilm){
        this.filmID = updateFilm.getFilmID();
        this.imdb_filmID = updateFilm.getImdb_filmID();
        this.name = updateFilm.getName();
        this.score =  updateFilm.getScore();
        this.ratingNum = updateFilm.getRatingNum();
        this.onTime = updateFilm.getOnTime();
        this.tags = updateFilm.getTags();
        this.scriptKeyWords = updateFilm.getScriptKeyWords();
        this.directors = updateFilm.getDirectors();
        this.actors = updateFilm.getActors();
        this.language = updateFilm.getLanguage();
        this.country = updateFilm.getCountry();
        this.summary = updateFilm.getSummary();
        this.tagLine = updateFilm.getTagLine();
        this.posterURL = updateFilm.getPosterURL();
        this.filmWatchURL = updateFilm.getFilmWatchURL();
        this.filmType = updateFilm.getFilmType();
        this.cast = updateFilm.getCast();
        this.storyline = updateFilm.getStoryline();
        this.award = updateFilm.getAward();
        this.runtime = updateFilm.getRuntime();
        this.soundmix = updateFilm.getSoundmix();
        Oscar = updateFilm.isOscar();
        this.budget = updateFilm.getBudget();
        this.worldwideGross = updateFilm.getWorldwideGross();
        this.gross = updateFilm.getGross();
        this.douban_score = updateFilm.getDouban_score();
    }


}
