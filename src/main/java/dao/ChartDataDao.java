package dao;

import entityVO.LineChartInfo;
import entityVO.RadarChartInfo;
import entityVO.ScatterChartInfo;
import entityVO.StackChartInfo;

import java.util.List;
import java.util.Map;

/**
 * Created by mac on 2017/5/25.
 */
public interface ChartDataDao {

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
     * @return 堆叠图信息 list
     */
    public List<StackChartInfo> getStackChartInfoForTagAndGross();

    /**
     * 得到每个标签，评分的avg,max,min 用于堆叠图
     * @return 堆叠图信息 list
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

}
