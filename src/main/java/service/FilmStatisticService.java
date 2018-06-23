package service;

import entityVO.*;
import enumtype.TimeType;

import java.util.List;
import java.util.Map;

/**
 * Created by mac on 2017/3/27.
 */
public interface FilmStatisticService {

    /**
     * 根据 tag 拿取对应的雷达图信息
     * @param tag 标签
     * @param year 年份
     * @return 雷达图信息
     */
    public RadarChartInfo getRadarChartInfo(String tag, int year);

    /**
     * 根据 年份 得到这一年电影的评分list
     * @param year 年份
     * @return 评分list
     */
    public List<Double> getBoxChartInfoForEachYearScore(int year);

    /**
     * 得到每年电影评分和票房/预算的关系，散点图
     * @return 散点图信息的list
     */
    public List<ScatterChartInfo> getScatterChartInfoForScoreAndGrossBudget();

    /**
     * 得到YTB点击量和票房的散点图
     * @return 散点图信息的list
     */
    public List<ScatterChartInfo> getScatterChartInfoForYTBClickAndGross();

    /**
     * 得到每年电影TOP5的标签的数量，用于饼图
     * @return List<每年<tag,number>>
     */
    public List<Map<String,Integer>> getPieChartInfoForEachYearTagTop5();

    /**
     * 得到高分电影TOP10的标签的数量，用于饼图
     * @return Map<tag,number>
     */
    public Map<String,Integer> getPieChartInfoForHighScoreTagTop10();

    /**
     * 得到每个标签，票房的avg,max,min 用于堆叠图
     * @return
     */
    public List<StackChartInfo> getStackChartInfoForTagAndGross();

    /**
     * 得到每个标签，评分的avg,max,min 用于堆叠图
     * @return
     */
    public List<StackChartInfo> getStackChartInfoForTagAndScore();

    /**
     * 得到每个标签，imdb和豆瓣评分的均值，用于折线图
     * @return 折线图信息 list
     */
    public List<LineChartInfo> getLineChartInfoForDoubanAndIMDB();

    /**
     * 得到每年，从1920-2017，当年电影的最高分，最低分，平均分
     * @return 折线图信息 list
     */
    public List<LineChartInfo> getLineChartInfoForEachYearScore();

    /**
     * 根据电影ID，拿到该电影评分随时间变化的关系
     * @param imdb_filmID 电影ID
     * @return String:日期／精确到天,格式 xxxx_xx_xx/x Double:电影评分
     * 已经按时间从前到后排好序
     */
    public Map<String,Double> getScoreFluctuation(String imdb_filmID);

    /**
     * 传入一个起止时间的类，返回在这个时间段内，电影评分随时间变化的关系
     * @param time 起止时间类
     * @return String:日期／精确到天,格式 xxxx_xx_xx/x Double:电影评分
     * 已经按时间从前到后排好序
     */
    public Map<String,Double> getScoreFluctuation(Time time);

    /**
     * 根据电影ID，及时间类型，返回该电影的评论数
     * @param imdb_filmID 电影ID
     * @param type 月／季
     * @return 时间分布,String类型为year_month／year_quarter
     * 已经按时间从前到后排好序
     */
    public Map<String,Integer> getReviewNum(String imdb_filmID, TimeType type);

    /**
     * 传入一个起止时间的类，返回在这个时间段内，电影评论数量随时间变化的关系
     * @param time 起止时间类
     * @return 时间分布,String类型为year_month／year_quarter
     * 已经按时间从前到后排好序
     */
    public Map<String,Integer> getReviewNum(Time time);

    /**
     * 根据电影ID，返回该电影所有评论的评分分布
     * @param imdb_filmID 电影ID
     * @return MAP，key值为0、1、2代表1分，2分，3分，以此类推
     * 每个value对应该评分的数量
     */
    public Map<Integer,Integer> getScoreNum(String imdb_filmID);

    /**
     * 根据电影ID，返回该电影所有评论中使用最多的n个词及每个词出现的次数
     * !!注意取出的为形容词，可能不足n个，取出时要检查长度
     * @param imdb_filmID 电影ID
     * @param n 需要返回的关键词个数
     * @return 包含 n 个词的Map
     */
    public Map<String,Integer> getCommentWords(String imdb_filmID, int n);

    /**
     * 根据电影ID，返回评论文字长度分布数组
     * @param imdb_filmID 电影ID
     * @param restriction 分割线,第一个位置要放0
     * @param number 分割线数组长度
     * @return 在每个范围内，对应描述文字长度的评论数
     */
    public int[] getDescriptionNum(String imdb_filmID, int[] restriction, int number);

    /**
     * 根据电影ID，得到该电影的评论在不同国家的个数
     * @param imdb_filmID 电影ID
     * @return 评论分布的list
     */
    public List<ReviewDistribute> getReviewCountryDistribute(String imdb_filmID);

}
