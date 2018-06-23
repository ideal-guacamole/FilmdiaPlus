package analyse;

import dao.FilmDataDao;
import daoImpl.FilmDataDaoImpl;
import entityPO.Film;

import java.util.*;

/**
 * Created by mac on 2017/5/25.
 * 计算每年各个电影类型的占比
 */
public class EachYearTagTop {

    private static FilmDataDao filmDataDao = new FilmDataDaoImpl();

    public static void process(){

        for(int year=2017;year>1925;year--){

            List<Film> filmList = filmDataDao.getFilmByYear(year);
            HashMap<String, Integer> hashMap = new HashMap<>();

            for (Film film : filmList) {
                if(film.getTags() != null) {
                    for (String word : film.getTags()) {
                        if (!hashMap.containsKey(word)) {
                            hashMap.put(word, 1);
                        } else {
                            int k = hashMap.get(word) + 1;
                            hashMap.put(word, k);
                        }
                    }
                }
            }

            //这里将map.entrySet()转换成list
            List<Map.Entry<String,Integer>> list = new ArrayList<>(hashMap.entrySet());
            //然后通过比较器来实现排序
            //降序排序
            Collections.sort(list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));

            System.out.print(year + ":");

            for(int i =0;i<5;i++) {
                System.out.print(list.get(i).getKey() + "/" + list.get(i).getValue());
                if(i != 4)
                    System.out.print(" ");
            }
            System.out.println();
        }
    }
}
