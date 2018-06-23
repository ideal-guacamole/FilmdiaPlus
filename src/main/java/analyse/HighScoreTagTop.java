package analyse;

import dao.FilmDataDao;
import daoImpl.FilmDataDaoImpl;
import entityPO.Film;

import java.util.*;

/**
 * Created by mac on 2017/5/25.
 * 计算高分电影各类型的占比
 */
public class HighScoreTagTop {

    private static FilmDataDao filmDataDao = new FilmDataDaoImpl();

    public static void process(){
        List<Film> filmList = filmDataDao.getCertainScoreFilm(8.0);

        HashMap<String, Integer> hashMap = new HashMap<>();

        for (Film film : filmList) {
            if(film.getTags() != null) {
                for (String word : film.getTags()) {
                    if (!hashMap.containsKey(word)) {
                        hashMap.put(word, 1);
                    } else {
                        int k = 0;
                        int n = hashMap.get(word) + 1;
                        hashMap.put(word, n);
                    }
                }
            }
        }

        //这里将map.entrySet()转换成list
        List<Map.Entry<String,Integer>> list = new ArrayList<>(hashMap.entrySet());
        //然后通过比较器来实现排序
        //降序排序
        Collections.sort(list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));

//        for(int i =0;i<10;i++) {
////            System.out.print(list.get(i).getKey() + "/" + list.get(i).getValue());
//            if(i != 9)
////                System.out.print(" ");
//        }
//        System.out.println();
    }
}
