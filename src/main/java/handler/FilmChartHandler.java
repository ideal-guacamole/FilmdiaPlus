package handler;

import entityVO.*;
import enumtype.TimeType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.FilmStatisticService;

import java.util.List;
import java.util.Map;

/**
 * Created by mac on 2017/5/15.
 */
@Controller
@RequestMapping("/filmChart")
public class FilmChartHandler {

    @Autowired
    private FilmStatisticService filmStatisticService;

    @RequestMapping("/getScoreFluctuation")
    public @ResponseBody Map<String,Double> getScoreFluctuation(@RequestBody String imdb_filmID){
        return filmStatisticService.getScoreFluctuation(imdb_filmID);
    }

    @RequestMapping("/getReviewNum")
    public @ResponseBody Map<String,Integer> getReviewNum(String imdb_filmID, TimeType type){
        return filmStatisticService.getReviewNum(imdb_filmID,type);
    }

    @RequestMapping("/getScoreNum")
    public @ResponseBody Map<Integer,Integer> getScoreNum(@RequestBody String imdb_filmID){
        return filmStatisticService.getScoreNum(imdb_filmID);
    }

    @RequestMapping("/getCommentWords")
    public @ResponseBody Map<String,Integer> getCommentWords(String imdb_filmID, Integer n){
        return filmStatisticService.getCommentWords(imdb_filmID,n);
    }

    @RequestMapping("/getDescriptionNum")
    public @ResponseBody int[] getDescriptionNum(String imdb_filmID, Integer number){
        int[] restriction = new int[100];
        restriction[0] = 0;
        int length = 1;
        for(int i=1;i*number < 200;i++){
            restriction[i] = i*number;
            length++;
        }
        restriction[length++] = 200;

        return filmStatisticService.getDescriptionNum(imdb_filmID,restriction,length);
    }

    @RequestMapping("/getReviewCountryDistribute")
    public @ResponseBody List<ReviewDistribute> getReviewCountryDistribute(@RequestBody String imdb_filmID){
        return filmStatisticService.getReviewCountryDistribute(imdb_filmID);
    }

    @RequestMapping("/getRadarChartInfo")
    public @ResponseBody RadarChartInfo getRadarChartInfo(String tag, int year){
        return filmStatisticService.getRadarChartInfo(tag,year);
    }

    @RequestMapping("/getBoxChartInfoForEachYearScore")
    public @ResponseBody List<Double> getBoxChartInfoForEachYearScore(@RequestBody int year){
        return filmStatisticService.getBoxChartInfoForEachYearScore(year);
    }

    @RequestMapping("/getScatterChartInfo")
    public @ResponseBody List<ScatterChartInfo> getScatterChartInfo(){
        return filmStatisticService.getScatterChartInfoForScoreAndGrossBudget();
    }

    @RequestMapping("/getScatterChartInfoForYTB")
    public @ResponseBody List<ScatterChartInfo> getScatterChartInfoForYTB(){
        return filmStatisticService.getScatterChartInfoForYTBClickAndGross();
    }

    @RequestMapping("/getPieChartInfoForEachYearTagTop5")
    public @ResponseBody List<Map<String,Integer>> getPieChartInfoForEachYearTagTop5(){
        return filmStatisticService.getPieChartInfoForEachYearTagTop5();
    }

    @RequestMapping("/getPieChartInfoForHighScoreTagTop10")
    public @ResponseBody Map<String,Integer> getPieChartInfoForHighScoreTagTop10(){
        return filmStatisticService.getPieChartInfoForHighScoreTagTop10();
    }

    @RequestMapping("/getStackChartInfoForTagAndGross")
    public @ResponseBody List<StackChartInfo> getStackChartInfoForTagAndGross(){
        return filmStatisticService.getStackChartInfoForTagAndGross();
    }

    @RequestMapping("/getStackChartInfoForTagAndScore")
    public @ResponseBody List<StackChartInfo> getStackChartInfoForTagAndScore(){
        return filmStatisticService.getStackChartInfoForTagAndScore();
    }

    @RequestMapping("/getLineChartInfoForDoubanAndIMDB")
    public @ResponseBody List<LineChartInfo> getLineChartInfoForDoubanAndIMDB(){
        return filmStatisticService.getLineChartInfoForDoubanAndIMDB();
    }

    @RequestMapping("/getLineChartInfoForEachYearScore")
    public @ResponseBody List<LineChartInfo> getLineChartInfoForEachYearScore(){
        return filmStatisticService.getLineChartInfoForEachYearScore();
    }
}
