package dao;


import entityPO.Film;
import entityPO.TrailerClick;
import entityPO.UpdateFilm;
import entityVO.Restriction;
import enumtype.FilmType;

import java.util.List;
import java.util.Map;

/**
 * Created by mac on 2017/3/22.
 */
public interface FilmDataDao {

    /**
     * 得到电影库指定数量电影
     * @param location 起始位置
     * @param number 电影数量
     * @return 电影List
     */
    public List<Film> getLibrary(int location, int number);

    /**
     * 得到电影库电影总数
     * @return 电影总数
     */
    public long getLibrarySize();

    /**
     * 根据每页的数量，返回电影库最大页数
     * @param number 每页的数量
     * @return 电影库最大页数
     */
    public int getLibraryTotalPage(int number);

    /**
     * 得到电影库的特定类型电影
     * @param filmType 电影类型
     * @return 电影List
     */
    public List<Film> getFilmByType(FilmType filmType);

    /**
     * 得到电影库的指定筛选条件的电影
     * @param location 起始位置
     * @param number 电影数量
     * @param restriction 限制条件
     * @return 电影List
     */
    public List<Film> getFilmByRestriction(int location, int number, Restriction restriction);

    /**
     * 得到电影库的指定筛选条件的电影的最大页数
     * @param number 每页的数量
     * @param restriction 限制条件
     * @return 满足筛选条件电影的最大页数
     */
    public int getFilmTotalPageByRestriction(int number, Restriction restriction);

    /**
     * 根据filmID取出单个电影
     * @param filmID 具体ID
     * @return 电影
     */
    public Film getFilm(int filmID);

    /**
     * 根据 imdb_filmID 取出单个电影
     * @param imdb_filmID IMDB ID
     * @return 电影
     */
    public Film getFilm(String imdb_filmID);

    /**
     * 根据filmID取出单个电影
     * @param filmID 具体ID(来自UpdateFilm)
     * @return 电影
     */
    public Film getFilmFromUpdate(int filmID);

    /**
     * 根据 imdb_filmID 取出单个电影
     * @param imdb_filmID IMDB ID
     * @return 更新的电影
     */
    public UpdateFilm getFilmFromUpdate(String imdb_filmID);

    /**
     * 根据电影名，返回模糊搜索对应的电影list
     * @param filmName 电影名
     * @return 电影list
     */
    public List<Film> getFilms(String filmName);

    /**
     * 根据 tag 类型，返回对应的电影List
     * @param tag 标签
     * @return 电影list
     */
    public List<Film> getFilmByTag(String tag);

    /**
     * 根据年份，返回当年对应的全部电影
     * @param year 年份
     * @return 电影list
     */
    public List<Film> getFilmByYear(int year);

    /**
     * 根据分数，返回得分>=该分数的全部电影
     * @param score 分数
     * @return 电影list
     */
    public List<Film> getCertainScoreFilm(double score);

    /**
     * 得到所有电影的YouTuBe点击量
     * @return 点击量的list
     */
    public List<TrailerClick> getYouTuBeClick();

    /**
     * 根据 imdb_filmID 拿取电影名字
     * @param imdb_filmID IMDB ID
     * @return 电影名
     */
    public String getFilmName(String imdb_filmID);

}
