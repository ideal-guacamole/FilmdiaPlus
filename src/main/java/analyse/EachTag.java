package analyse;

import dao.FilmDataDao;
import dao.ReviewDataDao;
import daoImpl.FilmDataDaoImpl;
import daoImpl.ReviewDataDaoImpl;
import entityPO.Film;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by mac on 2017/5/25.
 * 计算雷达图，每个类别的情况
 */
public class EachTag {

    private static FilmDataDao filmDataDao = new FilmDataDaoImpl();
    private static ReviewDataDao reviewDataDao = new ReviewDataDaoImpl();

    private static List<String> tags = Arrays.asList(
            "Action","Adventure","Animation","Biography",
            "Comedy","Crime","Documentary","Drama",
            "Family","Fantasy","Game-Show","History",
            "Horror","Music","Musical","Mystery",
            "News","Reality-TV","Romance","Sci-Fi",
            "Sitcom","Sport","Talk-Show","Thriller",
            "War","Western");

    /**
     * 权重
     */
    private static double PAST_WEIGHT = 0.6;
    private static double NOW_WEIGHT = 0.4;

    public static void process(){

        for(String tag : tags) {
            List<Film> filmListForTag = filmDataDao.getFilmByTag(tag);
            for (int year = 2017; year > 1925; year--) {

                List<Film> filmList = new ArrayList<>();
                for(Film film : filmListForTag) {
                    if(film.getOnTime().substring(0,4).equals("" + year))
                        filmList.add(film);
                }

                if (filmList.size() != 0) {
                    double score = 0.0;
                    long gross = 0;
                    long reviewNumber = 0;
                    long budget = 0;
                    long runtime = 0;
                    long ratingNum = 0;
                    for (Film film : filmList) {
                        score += film.getScore();
                        if(Integer.parseInt(film.getOnTime().substring(0,4)) < 2000)
                            gross += film.getGross() * PAST_WEIGHT;
                        else
                            gross += film.getGross() * NOW_WEIGHT;
                        reviewNumber += reviewDataDao.getReviewNumber(film.getImdb_filmID());
                        budget += film.getBudget();
                        runtime += film.getRuntime();
                        ratingNum += film.getRatingNum();
                    }
                    score /= filmList.size();
//                    gross /= filmList.size();
                    gross /= (PAST_WEIGHT + NOW_WEIGHT);
                    reviewNumber /= filmList.size();
                    budget /= filmList.size();
                    runtime /= filmList.size();
                    ratingNum /= filmList.size();

                    score = nBitFloat(score, 1);

//                    System.out.println(tag + ":" + score + "/" + gross + "/" + reviewNumber + "/" +
//                            budget + "/" + runtime + "/" + ratingNum + "/" + year);
                }
            }
        }
    }

    /**
     * 将评分处理为n位小数
     */
    private static double nBitFloat(double score,int n){
        BigDecimal bg = new BigDecimal(score);
        double result = bg.setScale(n, BigDecimal.ROUND_HALF_UP).doubleValue();
        return result;
    }

}
