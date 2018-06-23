package serviceImpl;

import dao.FilmDataDao;
import entityPO.Film;
import entityVO.Restriction;
import enumtype.ScoreSort;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.FilmSortService;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * Created by mac on 2017/3/22.
 */
@Service("filmSortService")
public class FilmSortServiceImpl implements FilmSortService {

    @Autowired
    private FilmDataDao filmDataDao;

    private static List<String> countries = Arrays.asList("USA","UK","Japan","Germany","France");
    private static List<String> tags = Arrays.asList("Sci-Fi","Crime","Romance","Animation","Music","Comedy","War","Horror",
            "Western","Reality-TV","Thriller","Adventure","Mystery","Short","Drama","Action","Documentary","Musical",
            "History","Family","Fantasy","Game-Show","Sport","Biography");
    /**
     * 缓存
     */
    private static List<Film> buf_filmList = null;
    private static Integer buf_location = null;


    @Override
    public List<Film> getLibrary(int location, int number) {
        if(buf_filmList == null) {
            buf_filmList = filmDataDao.getLibrary(location, number);
            buf_location = location;
        }
        if(buf_location != location) {
            buf_filmList = filmDataDao.getLibrary(location, number);
            buf_location = location;
        }
        return buf_filmList;
    }

    @Override
    public long getLibrarySize() {
        return filmDataDao.getLibrarySize();
    }

    @Override
    public int getLibraryTotalPage(int number) {
        return filmDataDao.getLibraryTotalPage(number);
    }

    @Override
    public List<Film> filter(int location, int number,Restriction restriction) {
        return filmDataDao.getFilmByRestriction(location,number,restriction);
    }

    @Override
    public int getFilmTotalPageByRestriction(int number, Restriction restriction) {
        return filmDataDao.getFilmTotalPageByRestriction(number,restriction);
    }

}