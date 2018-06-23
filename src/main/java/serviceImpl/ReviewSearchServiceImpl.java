package serviceImpl;

import dao.ReviewDataDao;
import entityPO.Review;
import enumtype.ReviewSort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.ReviewSearchService;
import wordcount.WordUtil;

import javax.persistence.criteria.CriteriaBuilder;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/**
 * Created by mac on 2017/5/12.
 */
@Service("reviewSearchService")
public class ReviewSearchServiceImpl implements ReviewSearchService {

    @Autowired
    private ReviewDataDao reviewDataDao;

    /**
     * 缓存
     */
    private static List<Review> buf_reviewList = null;
    private static Map<String, Integer> buf_keywords = null;
    private static String buf_filmID = null;

    /**
     * 权重
     */
    private static double VALUE_WEIGHT = 0.6;
    private static double NUM_WEIGHT = 0.002;

    @Override
    public List<Review> getReviews(String imdb_filmID) {
        if (buf_reviewList == null || !buf_filmID.equals(imdb_filmID)) {
            buf_reviewList = reviewDataDao.getReviews(imdb_filmID);
            buf_filmID = imdb_filmID;
        }
        return buf_reviewList;
    }

    @Override
    public List<Review> getReviews(String imdb_filmID, int n) {
        if (buf_reviewList == null || !buf_filmID.equals(imdb_filmID)) {
            buf_reviewList = reviewDataDao.getReviews(imdb_filmID, n);
            buf_filmID = imdb_filmID;
        }
        return buf_reviewList;
    }

    @Override
    public List<Review> getReviews(String imdb_filmID, ReviewSort reviewSort) {
        if (!buf_filmID.equals(imdb_filmID)) {
            buf_reviewList = reviewDataDao.getReviews(imdb_filmID);
            buf_filmID = imdb_filmID;
        }

        if (reviewSort.equals(ReviewSort.MostHelpful)) {
            //按helpfulness 从大到小排序
            Collections.sort(buf_reviewList, (o1, o2) -> {
                int[] a1 = new int[2];
                int[] a2 = new int[2];
                for (int i = 0; i < 2; i++) {
                    a1[i] = Integer.parseInt(o1.getHelpfulness().split("/")[i]);
                    a2[i] = Integer.parseInt(o2.getHelpfulness().split("/")[i]);
                }
                Double a1_ = 0.0;
                Double a2_ = 0.0;
                if (a1[1] != 0)
                    a1_ = ((double) a1[0]) / a1[1];
                if (a2[1] != 0)
                    a2_ = ((double) a2[0]) / a2[1];

                //权重计算
                a1_ = a1_ * VALUE_WEIGHT + a1[1] * NUM_WEIGHT;
                a2_ = a2_ * VALUE_WEIGHT + a2[1] * NUM_WEIGHT;

                return a2_.compareTo(a1_);
            });
        } else {
            Collections.sort(buf_reviewList, (o1, o2) -> {
                LocalDate a = o1.getTime();
                LocalDate b = o2.getTime();

                if (reviewSort.equals(ReviewSort.Oldest))
                    return a.compareTo(b);
                else
                    return b.compareTo(a);

            });
        }

        return buf_reviewList;
    }

    @Override
    public List<Review> getReviews(String imdb_filmID, ReviewSort reviewSort, int n) {
        if (!buf_filmID.equals(imdb_filmID)) {
            buf_reviewList = reviewDataDao.getReviews(imdb_filmID, n);
            buf_filmID = imdb_filmID;
        }

        if (reviewSort.equals(ReviewSort.MostHelpful) || reviewSort.equals(ReviewSort.LeastHelpful)) {
            //按helpfulness 从大到小排序
            Collections.sort(buf_reviewList, (o1, o2) -> {
                int[] a1 = new int[2];
                int[] a2 = new int[2];
                a1[0] = a1[1] = a2[0] = a2[1] = 0;
                String temp1 = "";
                String temp11 = "";
                String temp2 = "";
                String temp22 = "";
                if (o1.getHelpfulness().length()>2) {
                    temp1 = o1.getHelpfulness().split("/")[0];
                    temp11 = o1.getHelpfulness().split("/")[1];
                }
                if (o2.getHelpfulness().length()>2) {
                    temp2 = o2.getHelpfulness().split("/")[0];
                    temp22 = o2.getHelpfulness().split("/")[1];
                }
                try {
                    if (isNumeric(temp1)) {
                        a1[0] = new DecimalFormat().parse(temp1).intValue();
                    }
                    if (isNumeric(temp11)) {
                        a1[1] = new DecimalFormat().parse(temp11).intValue();
                    }
                    if (isNumeric(temp2)) {
                        a2[0] = new DecimalFormat().parse(temp2).intValue();
                    }
                    if (isNumeric(temp22)) {
                        a2[1] = new DecimalFormat().parse(temp22).intValue();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }

//                System.out.println(a1[0] + " / " + a1[1]);
//                System.out.println(a2[0] + " / " + a2[1]);
                Double a1_ = 0.0;
                Double a2_ = 0.0;
                if (a1[1] != 0) {
                    a1_ = ((double) a1[0]) / a1[1];
                }
                if (a2[1] != 0) {
                    a2_ = ((double) a2[0]) / a2[1];
                }

                //权重计算
                a1_ = a1_ * VALUE_WEIGHT + a1[1] * NUM_WEIGHT;
                a2_ = a2_ * VALUE_WEIGHT + a2[1] * NUM_WEIGHT;
                if (reviewSort.equals(ReviewSort.MostHelpful)) {
                    return a2_.compareTo(a1_);
                } else {
                    return a1_.compareTo(a2_);
                }
            });
        } else {
            Collections.sort(buf_reviewList, (o1, o2) -> {
                LocalDate a = o1.getTime();
                LocalDate b = o2.getTime();

                if (reviewSort.equals(ReviewSort.Oldest))
                    return a.compareTo(b);
                else
                    return b.compareTo(a);

            });
        }

        return buf_reviewList;
    }

    @Override
    public Map<String, Integer> getReviewsKeyWords(String imdb_filmID, int n) {
        if (!buf_filmID.equals(imdb_filmID)) {
            buf_reviewList = reviewDataDao.getReviews(imdb_filmID);
            buf_keywords = WordUtil.keyWordSearch(buf_reviewList, n);
            buf_filmID = imdb_filmID;
        }
        if (buf_keywords == null)
            buf_keywords = WordUtil.keyWordSearch(buf_reviewList, n);

        return buf_keywords;
    }

    @Override
    public List<Review> filterReviewsByKeyWord(String imdb_filmID, String keyword) {
        if (!buf_filmID.equals(imdb_filmID)) {
            buf_reviewList = reviewDataDao.getReviews(imdb_filmID);
            buf_filmID = imdb_filmID;
        }
        List<Review> result = new ArrayList<>();
        for (Review review : buf_reviewList) {
            if (review.getText().contains(keyword))
                result.add(review);
        }

        return result;
    }

    @Override
    public long getReviewNumber(String imdb_filmID) {
        return reviewDataDao.getReviewNumber(imdb_filmID);
    }

    public boolean isNumeric(String str) {
        try {
            new DecimalFormat().parse(str).intValue();
            return true;
        } catch (NumberFormatException e) {
//            System.out.println("异常：\"" + str + "\"不是数字/整数...");
            return false;
        }
        catch (ParseException e) {
//            System.out.println("转换异常：\"" + str + "\"不是数字/整数...");
            return false;
        }
    }
}
