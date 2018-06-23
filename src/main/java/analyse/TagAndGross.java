package analyse;

import dao.FilmDataDao;
import daoImpl.FilmDataDaoImpl;
import entityPO.Film;

import java.util.Arrays;
import java.util.List;

/**
 * Created by mac on 2017/5/30.
 * 计算每个标签，票房的平均值，最大值，最小值，用于堆叠图
 */
public class TagAndGross {

    private static FilmDataDao filmDataDao = new FilmDataDaoImpl();

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
        for(String tag : tags){
            List<Film> filmList = filmDataDao.getFilmByTag(tag);
            if(filmList.size() != 0) {
                long avg_gross = 0;
                int max_gross = 0;
                int min_gross = 1000000000;
                for (Film film : filmList) {
                    if (film.getGross() != 0) {
                        if (film.getGross() > max_gross)
                            max_gross = film.getGross();
                        if (film.getGross() < min_gross)
                            min_gross = film.getGross();
//                        avg_gross += film.getGross();
                        if(Integer.parseInt(film.getOnTime().substring(0,4)) < 2000)
                            avg_gross += film.getGross() * PAST_WEIGHT;
                        else
                            avg_gross += film.getGross() * NOW_WEIGHT;
                    }
                }
//                avg_gross /= filmList.size();
                avg_gross /= (PAST_WEIGHT + NOW_WEIGHT);
                System.out.println(tag + ":" + "avg_gross/" + avg_gross + " " + "max_gross/" + max_gross + " " + "min_gross/" + min_gross);
            }
        }
    }
}
