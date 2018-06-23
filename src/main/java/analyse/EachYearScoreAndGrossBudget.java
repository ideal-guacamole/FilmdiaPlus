package analyse;

import dao.FilmDataDao;
import daoImpl.FilmDataDaoImpl;
import entityPO.Film;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by mac on 2017/5/30.
 * 计算每年电影评分和票房/预算的关系，散点图（气泡图）
 */
public class EachYearScoreAndGrossBudget {

    private static FilmDataDao filmDataDao = new FilmDataDaoImpl();

    /**
     * 权重
     */
    private static double PAST_WEIGHT = 0.6;
    private static double NOW_WEIGHT = 0.4;

    public static void process(){
        for(int year=1925;year<=2017;year++){
            List<Film> filmList = filmDataDao.getFilmByYear(year);
            List<List<Film>> list = new ArrayList<>();
            for(int i=0;i<5;i++) {
                List<Film> films = new ArrayList<>();
                list.add(films);
            }

            for(Film film : filmList){
                if(film.getCountry() != null && film.getCountry().equals("USA")) {
                    if (film.getScore() <= 5.0)
                        list.get(0).add(film);
                    else if (film.getScore() <= 6.0 && film.getScore() > 5.0)
                        list.get(1).add(film);
                    else if (film.getScore() <= 7.0 && film.getScore() > 6.0)
                        list.get(2).add(film);
                    else if (film.getScore() <= 8.0 && film.getScore() > 7.0)
                        list.get(3).add(film);
                    else
                        list.get(4).add(film);
                }
            }

            System.out.println(year);

            for(List<Film> eachList : list) {
                if(eachList.size() != 0 ) {
                    long avg_budget = 0;
                    long avg_gross = 0;
                    for (Film film : eachList) {
                        if(film.getBudget() == 0 && film.getGross() == 0)
                            continue;
                        if(film.getBudget() == 0)
                            film.setBudget((int) (film.getGross() * 0.7));
                        if(film.getGross() == 0)
                            film.setGross((int) (film.getBudget() * 1.5));

                        avg_budget += film.getBudget();
//                        avg_gross += film.getGross() > film.getWorldwideGross() ? film.getGross() : film.getWorldwideGross();

                        if(Integer.parseInt(film.getOnTime().substring(0,4)) < 2000)
                            avg_gross += film.getGross() * PAST_WEIGHT;
                        else
                            avg_gross+= film.getGross() * NOW_WEIGHT;

                    }
                    avg_budget /= eachList.size();
//                    avg_gross /= eachList.size();
                    avg_gross /= (PAST_WEIGHT + NOW_WEIGHT);

                    if(avg_gross == 0)
                        avg_gross = (long) (avg_budget * 1.5);
                    if(avg_budget == 0)
                        avg_budget = (long) (avg_gross * 0.7);

                    if(avg_budget != 0 && avg_gross != 0)
                        System.out.println("avg_budget:" + avg_budget + "/" + "avg_gross:" + avg_gross + "/" + "number:" + eachList.size());
                    else
                        System.out.println("null");

                }
                else
                    System.out.println("null");
            }
        }
    }

}
