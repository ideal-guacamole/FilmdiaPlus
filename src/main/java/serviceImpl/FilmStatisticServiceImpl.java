package serviceImpl;

import dao.ChartDataDao;
import entityPO.Review;
import entityVO.*;
import enumtype.TimeType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.FilmStatisticService;
import service.ReviewSearchService;
import timesort.TimeSort;
import wordcount.WordUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by mac on 2017/5/15.
 */
@Service("filmStatisticService")
public class FilmStatisticServiceImpl implements FilmStatisticService {

    /**
     * 缓存
     */
    private static HashMap<String,Integer> keyWords;
    private static String imdb_filmID = null;


    @Autowired
    private ReviewSearchService reviewSearchService;

    @Autowired
    private ChartDataDao chartDataDao;

    @Override
    public RadarChartInfo getRadarChartInfo(String tag, int year) {
        return chartDataDao.getRadarChartInfo(tag,year);
    }

    @Override
    public List<Double> getBoxChartInfoForEachYearScore(int year) {
        return chartDataDao.getBoxChartInfoForEachYearScore(year);
    }

    @Override
    public List<ScatterChartInfo> getScatterChartInfoForScoreAndGrossBudget() {
        return chartDataDao.getScatterChartInfoForScoreAndGrossBudget();
    }

    @Override
    public List<ScatterChartInfo> getScatterChartInfoForYTBClickAndGross() {
        return chartDataDao.getScatterChartInfoForYTBClickAndGross();
    }

    @Override
    public List<Map<String, Integer>> getPieChartInfoForEachYearTagTop5() {
        return chartDataDao.getPieChartInfoForEachYearTagTop5();
    }

    @Override
    public Map<String, Integer> getPieChartInfoForHighScoreTagTop10() {
        return chartDataDao.getPieChartInfoForHighScoreTagTop10();
    }

    @Override
    public List<StackChartInfo> getStackChartInfoForTagAndGross() {
        return chartDataDao.getStackChartInfoForTagAndGross();
    }

    @Override
    public List<StackChartInfo> getStackChartInfoForTagAndScore() {
        return chartDataDao.getStackChartInfoForTagAndScore();
    }

    @Override
    public List<LineChartInfo> getLineChartInfoForDoubanAndIMDB() {
        return chartDataDao.getLineChartInfoForDoubanAndIMDB();
    }

    @Override
    public List<LineChartInfo> getLineChartInfoForEachYearScore() {
        return chartDataDao.getLineChartInfoForEachYearScore();
    }

    @Override
    public Map<String, Double> getScoreFluctuation(String imdb_filmID) {
        List<Review> reviewList = reviewSearchService.getReviews(imdb_filmID);
        return TimeSort.scoreTimeSort(reviewList);
    }

    @Override
    public Map<String, Double> getScoreFluctuation(Time time) {
        return TimeSort.Sort(time);
    }

    @Override
    public Map<String, Integer> getReviewNum(String imdb_filmID, TimeType type) {
        List<Review> reviewList = reviewSearchService.getReviews(imdb_filmID);
        return TimeSort.reviewTimeSort(reviewList,type);
    }

    @Override
    public Map<String, Integer> getReviewNum(Time time) {
        return TimeSort.Sort(time);
    }

    @Override
    public Map<Integer, Integer> getScoreNum(String imdb_filmID) {
        List<Review> reviewList = reviewSearchService.getReviews(imdb_filmID);
        HashMap<Integer,Integer> map = new HashMap<>();
        for(int i =0;i<10;i++)
            map.put(i, 0);
        for(Review review:reviewList){
            for(int i=9;i>=0;i--){
                if(review.getScore()>i){
                    int k = map.get(i) + 1;
                    map.put(i, k);
                    break;
                }
            }
        }

        return map;
    }

    @Override
    public Map<String, Integer> getCommentWords(String imdb_filmID, int n) {
        List<Review> reviewList = reviewSearchService.getReviews(imdb_filmID);
        if(keyWords == null||!this.imdb_filmID.equals(imdb_filmID)) {
            keyWords = WordUtil.keyWordSearch(reviewList, n);
            this.imdb_filmID = imdb_filmID;
        }
        return keyWords;
    }

    @Override
    public int[] getDescriptionNum(String imdb_filmID, int[] restriction, int number) {
        List<Review> reviewList = reviewSearchService.getReviews(imdb_filmID);
        int[] result = new int[number];

        for (Review review : reviewList) {
            String text = review.getText();
            int wordNumber = WordUtil.wordCount(text);

            for(int i = number-1; i >= 0;i--){
                if(wordNumber >= restriction[i]) {
                    result[i]++;
                    break;
                }
            }
        }

        return result;
    }

    @Override
    public List<ReviewDistribute> getReviewCountryDistribute(String imdb_filmID) {
        List<Review> reviewList = reviewSearchService.getReviews(imdb_filmID);
        Map<String, Integer> result = new HashMap<>();

        for(Review review : reviewList){
            if(review.getUserCountry() != null) {
                if (!result.containsKey(review.getUserCountry())) {
                    result.put(review.getUserCountry(), 1);
                } else {
                    int number = result.get(review.getUserCountry()) + 1;
                    result.put(review.getUserCountry(), number);
                }
            }
        }

        List<ReviewDistribute> reviewDistributeList = new ArrayList<>();
        for(String country : result.keySet()){
            reviewDistributeList.add(new ReviewDistribute(country,result.get(country)));
        }

        return reviewDistributeList;
    }
}
