package service;

import entityPO.Film;
import enumtype.FilmType;

import java.util.List;
import java.util.Map;

/**
 * Created by mac on 2017/3/22.
 */
public interface FilmSearchService {

    /**
     * 根据电影ID，拿到电影详细信息
     * @param filmID 电影ID
     * @return Film
     */
    public Film getFilm(int filmID);

    /**
     * 根据filmID取出单个电影
     * @param filmID 具体ID(来自UpdateFilm)
     * @return 电影
     */
    public Film getFilmFromUpdate(int filmID);

    /**
     * 根据电影名，返回模糊搜索对应的电影list
     * @param filmName 电影名
     * @return 电影list
     */
    public List<Film> getFilms(String filmName);

    /**
     * 得到电影库的特定类型电影
     * @param filmType 电影类型
     * @return 电影List
     */
    public List<Film> getFilmByType(FilmType filmType);

    /**
     * 根据 imdb_filmID 拿取电影名字
     * @param imdb_filmID IMDB ID
     * @return 电影名
     */
    public String getFilmName(String imdb_filmID);


}
