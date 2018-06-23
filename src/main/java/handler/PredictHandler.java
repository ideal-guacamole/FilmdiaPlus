package handler;

import entityVO.Analysis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.PredictService;

/**
 * Created by mac on 2017/6/12.
 */
@Controller
@RequestMapping("/predict")
public class PredictHandler {

    @Autowired
    private PredictService predictService;

    @RequestMapping("/getAnalysis")
    public @ResponseBody Analysis getAnalysis(@RequestBody String imdb_filmID) {
        return predictService.getAnalysis(imdb_filmID.substring(0, imdb_filmID.length()-1));
    }
}
