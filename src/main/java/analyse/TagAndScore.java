package analyse;

import dao.FilmDataDao;
import daoImpl.FilmDataDaoImpl;
import entityPO.Film;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;

/**
 * Created by mac on 2017/5/30.
 * 计算每个标签，评分的平均值，最大值，最小值，用于堆叠图
 */
public class TagAndScore {

    private static FilmDataDao filmDataDao = new FilmDataDaoImpl();

    private static List<String> tags = Arrays.asList(
            "Action","Adventure","Animation","Biography",
            "Comedy","Crime","Documentary","Drama",
            "Family","Fantasy","Game-Show","History",
            "Horror","Music","Musical","Mystery",
            "News","Reality-TV","Romance","Sci-Fi",
            "Sitcom","Sport","Talk-Show","Thriller",
            "War","Western");

    public static void process(){
        for(String tag : tags) {
            List<Film> filmList = filmDataDao.getFilmByTag(tag);
            if(filmList.size() != 0) {
                double avg_score = 0;
                double max_score = 0;
                double min_score = 10.0;
                for (Film film : filmList) {
                    if (film.getScore() > max_score)
                        max_score = film.getScore();
                    if (film.getScore() < min_score)
                        min_score = film.getScore();
                    avg_score += film.getScore();
                }
                avg_score /= filmList.size();
                avg_score = nBitFloat(avg_score, 1);

                System.out.println(tag + ":" + "avg_score/" + avg_score + " " + "max_score/" + max_score + " " + "min_score/" + min_score);
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
