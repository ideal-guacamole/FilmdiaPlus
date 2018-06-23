package service;

import entityPO.Film;
import entityVO.Restriction;

import java.util.List;

/**
 * Created by mac on 2017/5/12.
 */
public interface FilmSortService {

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
     * 根据参数：限制VO的属性，过滤返回满足条件的相关电影
     * @param location 起始位置
     * @param number 电影数量
     * @param restriction 限制条件
     * @return 电影List
     */
    public List<Film> filter(int location, int number,Restriction restriction);

    /**
     * 得到电影库的指定筛选条件的电影的最大页数
     * @param number 每页的数量
     * @param restriction 限制条件
     * @return 满足筛选条件电影的最大页数
     */
    public int getFilmTotalPageByRestriction(int number, Restriction restriction);

}
