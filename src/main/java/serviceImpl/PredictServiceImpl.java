package serviceImpl;

import dao.AnalyseDataDao;
import entityVO.Analysis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.PredictService;

/**
 * Created by LWY on 2017/6/8.
 */
@Service("predictService")
public class PredictServiceImpl implements PredictService {

    @Autowired
    private AnalyseDataDao analyseDataDao;

    @Override
    public Analysis getAnalysis(String imdb_filmID) {

        Analysis analysis = analyseDataDao.getAnalyseData(imdb_filmID);

        int[] knnRange = {(int)(analysis.predictGross_knn * (1 - 0.2 * (1-analysis.predictGross_knn_test))),
                (int)(analysis.predictGross_knn * (1 + 0.2 * (1-analysis.predictGross_knn_test)))};
        analysis.setPredictGross_knn_range(knnRange);

        int[] lassoRange = {(int)(analysis.predictGross_lasso * (1 - 0.2 *(1- analysis.predictGross_lasso_test))),
                (int)(analysis.predictGross_lasso * (1 + 0.2 * (1-analysis.predictGross_lasso_test)))};
        analysis.setPredictGross_lasso_range(lassoRange);

        int[] linearRange = {(int)(analysis.predictGross_linear * (1 - 0.2 * (1-analysis.predictGross_linear_test))),
                (int)(analysis.predictGross_linear * (1 + 0.2 * (1-analysis.predictGross_linear_test)))};
        analysis.setPredictGross_linear_range(linearRange);

        int[] polyRange = {(int)(analysis.predictGross_poly * (1 - 0.2 * (1-analysis.predictGross_poly_test))),
                (int)(analysis.predictGross_poly * (1 + 0.2 * (1-analysis.predictGross_poly_test)))};
        analysis.setPredictGross_poly_range(polyRange);

        return analysis;
    }
}
