package handler;

import entityPO.Review;
import entityVO.ReviewDistribute;
import entityVO.ReviewVO;
import enumtype.ReviewSort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.ReviewSearchService;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by mac on 2017/5/15.
 */
@Controller
@RequestMapping("/review")
public class ReviewSearchHandler {

    @Autowired
    private ReviewSearchService reviewSearchService;

    @RequestMapping("/getReviews")
    public @ResponseBody List<ReviewVO> getReviews(@RequestBody String imdb_filmID){
//        System.out.println(System.currentTimeMillis());
        if(imdb_filmID.contains("=")){
            imdb_filmID = imdb_filmID.substring(0,imdb_filmID.length()-1);
        }
        List<ReviewVO> reviewVOList = new ArrayList<>();
        for(Review review : reviewSearchService.getReviews(imdb_filmID))
            reviewVOList.add(new ReviewVO(review));
//        System.out.println(System.currentTimeMillis());
        return reviewVOList;
    }

    @RequestMapping("/getSortedReviews")
    public @ResponseBody List<ReviewVO> getReviews(String imdb_filmID, ReviewSort reviewSort){
        List<ReviewVO> reviewVOList = new ArrayList<>();

        for(Review review : reviewSearchService.getReviews(imdb_filmID,reviewSort, 10))
            reviewVOList.add(new ReviewVO(review));
        return reviewVOList;
    }

    @RequestMapping("/getReviewsKeyWords")
    public @ResponseBody Map<String,Integer> getReviewsKeyWords(@RequestBody String imdb_filmID, @RequestBody int n){
        return reviewSearchService.getReviewsKeyWords(imdb_filmID,n);
    }

    @RequestMapping("/filterReviewsByKeyWord")
    public @ResponseBody List<ReviewVO> filterReviewsByKeyWord(@RequestBody String imdb_filmID, @RequestBody String keyword){
        List<ReviewVO> reviewVOList = new ArrayList<>();
        for(Review review : reviewSearchService.filterReviewsByKeyWord(imdb_filmID,keyword))
            reviewVOList.add(new ReviewVO(review));
        return reviewVOList;
    }

    @RequestMapping("/getReviewNumber")
    public @ResponseBody long getReviewNumber(@RequestBody String imdb_filmID){
        return reviewSearchService.getReviewNumber(imdb_filmID);
    }
}
