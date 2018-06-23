package dao;

import entityVO.Analysis;

/**
 * Created by LWY on 2017/6/8.
 */
public interface AnalyseDataDao {

    /**
     * 根据 imdb_filmID 从数据库得到分析原始数据
     * @param imdb_filmID IMDB 电影ID
     * @return 分析对象
     */
    public Analysis getAnalyseData(String imdb_filmID);
}
