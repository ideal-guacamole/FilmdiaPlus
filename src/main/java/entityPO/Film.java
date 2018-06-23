package entityPO;



import enumtype.FilmType;

import java.util.*;

/**
 * Changed by lwy on 2017/5/15.
 */
public class Film {

    private int filmID;
    private String imdb_filmID;
    private String name;
    private double score;
    private int ratingNum;
    private String onTime;
    private List<String> tags;
    private List<String> scriptKeyWords;
    private List<String> directors;
    private List<String> actors;
    private String language;
    private String country;
    private String summary;
    private String tagLine; //经典台词
    private String posterURL; //海报url（小张
    private String filmWatchURL; //影片观看地址
    private FilmType filmType;
    private Map<String,String> cast; //map<演员，剧中人物>
    private String storyline;
    private String award;
    private int runtime;  //多少分钟
    private String soundmix;
    private boolean Oscar; // 是否奥斯卡
    private int budget;
    private int worldwideGross;
    private int gross;
    private double douban_score;

    public Film() {
    }

    public Film(FilmDB filmDB) {
        this.filmID = filmDB.getFilmID();
        this.imdb_filmID = filmDB.getImdb_filmID();
        this.name = filmDB.getName();
        this.score = filmDB.getScore();
        if(filmDB.getRatingNum() != null)
            this.ratingNum = filmDB.getRatingNum();
        else
            this.ratingNum = 0;
        this.language = filmDB.getLanguage();
        this.country = filmDB.getCountry();
        this.summary = filmDB.getSummary();
        this.tagLine = filmDB.getTagLine();
        this.posterURL = filmDB.getPosterURL();
        this.filmWatchURL = filmDB.getFilmWatchURL();
        this.filmType = filmDB.getFilmType();
        this.storyline = filmDB.getStoryline();
        this.award = filmDB.getAward();
        this.runtime = filmDB.getRuntime();
        this.soundmix = filmDB.getSoundmix();
        this.Oscar = filmDB.isOscar();
        this.budget = filmDB.getBudget();
        this.gross = filmDB.getGross();
        this.douban_score = filmDB.getDouban_score();

        if (filmDB.getOnTime() != null)
            this.onTime = filmDB.getOnTime().toString();
        else
            this.onTime = "Unknown";

        if (filmDB.getWorldwideGross() == null)
            this.worldwideGross = 0;
        else
            this.worldwideGross = filmDB.getWorldwideGross();

        this.tags = new ArrayList<>();
        Collections.addAll(tags, filmDB.getTags().split("/"));

        this.scriptKeyWords = new ArrayList<>();
        Collections.addAll(scriptKeyWords, filmDB.getScriptKeyWords().split("/"));

        this.directors = new ArrayList<>();
        Collections.addAll(directors, filmDB.getDirectors().split("/"));

        this.actors = new ArrayList<>();
        Collections.addAll(actors, filmDB.getActors().split("/"));

        List<String> entry = new ArrayList<>();
        Map<String,String> cast = new HashMap<>();
        if(filmDB.getCast() != null) {
            Collections.addAll(entry, filmDB.getCast().split("/"));

            for (String oneCast : entry) {
                if (oneCast.split(":").length == 2) {
                    cast.put(oneCast.split(":")[0], oneCast.split(":")[1]);
                }
            }
        }
        this.cast = cast;
    }

    public int getFilmID() {
        return filmID;
    }

    public void setFilmID(int filmID) {
        this.filmID = filmID;
    }

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

    public int getRatingNum() {
        return ratingNum;
    }

    public void setRatingNum(int ratingNum) {
        this.ratingNum = ratingNum;
    }

    public String getOnTime() {
        return onTime;
    }

    public void setOnTime(String onTime) {
        this.onTime = onTime;
    }

    public List<String> getTags() {
        return tags;
    }

    public void setTags(List<String> tags) {
        this.tags = tags;
    }

    public List<String> getScriptKeyWords() {
        return scriptKeyWords;
    }

    public void setScriptKeyWords(List<String> scriptKeyWords) {
        this.scriptKeyWords = scriptKeyWords;
    }

    public List<String> getDirectors() {
        return directors;
    }

    public void setDirectors(List<String> directors) {
        this.directors = directors;
    }

    public List<String> getActors() {
        return actors;
    }

    public void setActors(List<String> actors) {
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

    public FilmType getFilmType() {
        return filmType;
    }

    public void setFilmType(FilmType filmType) {
        this.filmType = filmType;
    }

    public Map<String, String> getCast() {
        return cast;
    }

    public void setCast(Map<String, String> cast) {
        this.cast = cast;
    }

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

    public int getWorldwideGross() {
        return worldwideGross;
    }

    public void setWorldwideGross(int worldwideGross) {
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
}
