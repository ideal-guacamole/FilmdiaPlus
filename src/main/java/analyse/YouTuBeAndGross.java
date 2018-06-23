package analyse;

import dao.FilmDataDao;
import daoImpl.FilmDataDaoImpl;
import entityPO.Film;
import entityPO.TrailerClick;

import java.util.List;

/**
 * Created by mac on 2017/6/9.
 * 分析YTB点击量和票房的关系，散点图
 */
public class YouTuBeAndGross {

    private static FilmDataDao filmDataDao = new FilmDataDaoImpl();

    public static void process(){
        List<TrailerClick> trailerClickList = filmDataDao.getYouTuBeClick();

        for(TrailerClick trailerClick : trailerClickList){
            Film film = filmDataDao.getFilm(trailerClick.getImdb_filmID());
            if(film.getCountry().equals("UK") || film.getCountry().equals("USA")) {
                int gross = film.getGross() > film.getWorldwideGross() ? film.getGross() : film.getWorldwideGross();
                if (gross != 0)
                    System.out.println("click_times:" + trailerClick.getClick_times() + " " + "gross:" + gross);
            }
        }

    }


}
