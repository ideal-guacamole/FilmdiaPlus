package serviceImpl;

import dao.FilmDataDao;
import entityPO.Film;
import enumtype.FilmType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.FilmSearchService;

import java.util.List;
import java.util.Map;

/**
 * Created by mac on 2017/5/12.
 */
@Service("filmSearchService")
public class FilmSearchServiceImpl implements FilmSearchService{

    @Autowired
    private FilmDataDao filmDataDao;

    @Override
    public Film getFilm(int filmID) {
        return filmDataDao.getFilm(filmID);
    }

    @Override
    public Film getFilmFromUpdate(int filmID) {
        return filmDataDao.getFilmFromUpdate(filmID);
    }

    @Override
    public List<Film> getFilms(String filmName) {
        return filmDataDao.getFilms(filmName);
    }

    @Override
    public List<Film> getFilmByType(FilmType filmType) {
        return filmDataDao.getFilmByType(filmType);
    }

    @Override
    public String getFilmName(String imdb_filmID) {
        return filmDataDao.getFilmName(imdb_filmID);
    }


}
