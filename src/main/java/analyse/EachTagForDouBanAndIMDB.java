package analyse;

import dao.FilmDataDao;
import daoImpl.FilmDataDaoImpl;
import entityPO.Film;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;

/**
 * Created by mac on 2017/5/31.
 * 每个标签下，豆瓣的评分和IMDB的评分对比，用于双折线图(平均分)
 */
public class EachTagForDouBanAndIMDB {

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
                double avg_douban = 0.0;
                double avg_imdb = 0.0;
                for (Film film : filmList) {
                    if(film.getDouban_score() != 0)
                        avg_douban += film.getDouban_score();
                    else
                        avg_douban += film.getScore() * 1.1;
                    avg_imdb += film.getScore();
                }
                avg_douban /= filmList.size();
                avg_imdb /= filmList.size();

                avg_douban = nBitFloat(avg_douban, 1);
                avg_imdb = nBitFloat(avg_imdb, 1);

                System.out.println(tag + ":" + "avg_imdb " + avg_imdb + "/" + "avg_douban " + avg_douban);
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
