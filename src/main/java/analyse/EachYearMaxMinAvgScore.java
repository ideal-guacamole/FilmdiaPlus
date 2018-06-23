package analyse;

import dao.FilmDataDao;
import daoImpl.FilmDataDaoImpl;
import entityPO.Film;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by mac on 2017/6/3.
 */
public class EachYearMaxMinAvgScore {
    private static FilmDataDao filmDataDao = new FilmDataDaoImpl();

    public static void process() {
        for (int year = 1925; year <= 2017; year++) {
            List<Film> filmList = filmDataDao.getFilmByYear(year);
            if (filmList.size() != 0) {
                List<Double> temp = new ArrayList<>();
                double avg_score = 0;
                double max_score = 0;
                double min_score = 10.0;
                for (Film film : filmList) {
                    if (film.getScore() > max_score)
                        max_score = film.getScore();
                    if (film.getScore() < min_score)
                        min_score = film.getScore();
                    avg_score += film.getScore();
                    temp.add(film.getScore());
                }
                avg_score /= filmList.size();
                avg_score = nBitFloat(avg_score, 1);

                double variance = 0;
                for(double each : temp){
                    variance += Math.pow(each - avg_score,2);
                }
                variance /= temp.size();
                variance = nBitFloat(variance,2);

                System.out.println(year + ":" + "avg_score/" + avg_score + " " + "max_score/" + max_score + " " + "min_score/" + min_score + " " + "variance/" + variance);
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
