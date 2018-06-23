package service;

import entityVO.Analysis;

/**
 * Created by LWY on 2017/6/8.
 */
public interface PredictService {
    /**
     * @param imdb_filmID
     * @return 获得对应分析结果实体，包括预测票房
     */
    public Analysis getAnalysis(String imdb_filmID);
}
