package entityVO;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;

/**
 * Created by LWY on 2017/6/8.
 */
public class Analysis {

    public int filmID;
    public String imdb_filmID;
    public String name;
    public double score;
    public int ratingNum;
    public List<String> tags;

    public Map<LocalDate,Integer> youtubeClickTimes;

    /**
     * <name/producerposter,Map<posterURL,该电影的票房>>
     */

    public Map<String,Map<String,Integer>> actors;
    public Map<String,Map<String,Integer>> directors;

    public String language;
    public String country;
    public String tagLine; //经典台词
    public String award;
    public int runtime;  //多少分钟
    public int budget;

    public int predictGross_linear;
    public double predictGross_linear_test;
    public int predictGross_lasso;
    public double predictGross_lasso_test;
    public int predictGross_knn;
    public double predictGross_knn_test;
    public int predictGross_poly;
    public double predictGross_poly_test;

    public int[] predictGross_linear_range;  //长度为2
    public int[] predictGross_lasso_range;
    public int[] predictGross_knn_range;
    public int[] predictGross_poly_range;

    public Analysis(int filmID, String imdb_filmID, String name, double score, int ratingNum, List<String> tags, Map<LocalDate, Integer> youtubeClickTimes, Map<String, Map<String, Integer>> actors, Map<String, Map<String, Integer>> directors, String language, String country, String tagLine, String award, int runtime, int budget, int predictGross_linear, double predictGross_linear_test, int predictGross_lasso, double predictGross_lasso_test, int predictGross_knn, double predictGross_knn_test, int predictGross_poly, double predictGross_poly_test) {
        this.filmID = filmID;
        this.imdb_filmID = imdb_filmID;
        this.name = name;
        this.score = score;
        this.ratingNum = ratingNum;
        this.tags = tags;
        this.youtubeClickTimes = youtubeClickTimes;
        this.actors = actors;
        this.directors = directors;
        this.language = language;
        this.country = country;
        this.tagLine = tagLine;
        this.award = award;
        this.runtime = runtime;
        this.budget = budget;
        this.predictGross_linear = predictGross_linear;
        this.predictGross_linear_test = predictGross_linear_test;
        this.predictGross_lasso = predictGross_lasso;
        this.predictGross_lasso_test = predictGross_lasso_test;
        this.predictGross_knn = predictGross_knn;
        this.predictGross_knn_test = predictGross_knn_test;
        this.predictGross_poly = predictGross_poly;
        this.predictGross_poly_test = predictGross_poly_test;
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

    public List<String> getTags() {
        return tags;
    }

    public void setTags(List<String> tags) {
        this.tags = tags;
    }

    public Map<LocalDate, Integer> getYoutubeClickTimes() {
        return youtubeClickTimes;
    }

    public void setYoutubeClickTimes(Map<LocalDate, Integer> youtubeClickTimes) {
        this.youtubeClickTimes = youtubeClickTimes;
    }

    public Map<String, Map<String, Integer>> getActors() {
        return actors;
    }

    public void setActors(Map<String, Map<String, Integer>> actors) {
        this.actors = actors;
    }

    public Map<String, Map<String, Integer>> getDirectors() {
        return directors;
    }

    public void setDirectors(Map<String, Map<String, Integer>> directors) {
        this.directors = directors;
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

    public String getTagLine() {
        return tagLine;
    }

    public void setTagLine(String tagLine) {
        this.tagLine = tagLine;
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

    public int getBudget() {
        return budget;
    }

    public void setBudget(int budget) {
        this.budget = budget;
    }

    public int getPredictGross_linear() {
        return predictGross_linear;
    }

    public void setPredictGross_linear(int predictGross_linear) {
        this.predictGross_linear = predictGross_linear;
    }

    public double getPredictGross_linear_test() {
        return predictGross_linear_test;
    }

    public void setPredictGross_linear_test(double predictGross_linear_test) {
        this.predictGross_linear_test = predictGross_linear_test;
    }

    public int getPredictGross_lasso() {
        return predictGross_lasso;
    }

    public void setPredictGross_lasso(int predictGross_lasso) {
        this.predictGross_lasso = predictGross_lasso;
    }

    public double getPredictGross_lasso_test() {
        return predictGross_lasso_test;
    }

    public void setPredictGross_lasso_test(double predictGross_lasso_test) {
        this.predictGross_lasso_test = predictGross_lasso_test;
    }

    public int getPredictGross_knn() {
        return predictGross_knn;
    }

    public void setPredictGross_knn(int predictGross_knn) {
        this.predictGross_knn = predictGross_knn;
    }

    public double getPredictGross_knn_test() {
        return predictGross_knn_test;
    }

    public void setPredictGross_knn_test(double predictGross_knn_test) {
        this.predictGross_knn_test = predictGross_knn_test;
    }

    public int getPredictGross_poly() {
        return predictGross_poly;
    }

    public void setPredictGross_poly(int predictGross_poly) {
        this.predictGross_poly = predictGross_poly;
    }

    public double getPredictGross_poly_test() {
        return predictGross_poly_test;
    }

    public void setPredictGross_poly_test(double predictGross_poly_test) {
        this.predictGross_poly_test = predictGross_poly_test;
    }

    public int[] getPredictGross_linear_range() {
        return predictGross_linear_range;
    }

    public void setPredictGross_linear_range(int[] predictGross_linear_range) {
        this.predictGross_linear_range = predictGross_linear_range;
    }

    public int[] getPredictGross_lasso_range() {
        return predictGross_lasso_range;
    }

    public void setPredictGross_lasso_range(int[] predictGross_lasso_range) {
        this.predictGross_lasso_range = predictGross_lasso_range;
    }

    public int[] getPredictGross_knn_range() {
        return predictGross_knn_range;
    }

    public void setPredictGross_knn_range(int[] predictGross_knn_range) {
        this.predictGross_knn_range = predictGross_knn_range;
    }

    public int[] getPredictGross_poly_range() {
        return predictGross_poly_range;
    }

    public void setPredictGross_poly_range(int[] predictGross_poly_range) {
        this.predictGross_poly_range = predictGross_poly_range;
    }
}
