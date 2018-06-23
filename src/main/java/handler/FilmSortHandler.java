package handler;

import entityPO.Film;
import entityVO.Restriction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.FilmSortService;

import java.util.List;

/**
 * Created by mac on 2017/5/15.
 */
@Controller
@RequestMapping("/film")
public class FilmSortHandler {

    @Autowired
    private FilmSortService filmSortService;

    @RequestMapping("/getLibraryTotalPage")
    public @ResponseBody int getLibraryTotalPage(){
        return filmSortService.getLibraryTotalPage(20);
    }

    @RequestMapping("/getLibraryFilms")
    public @ResponseBody List<Film> getFilms(@RequestBody Integer page){
        List<Film> list = filmSortService.getLibrary(page*20,20);
        return list;
    }

    @RequestMapping("/getSortedFilmTotalPage")
    public @ResponseBody int getFilmTotalPageByRestriction(Restriction restriction){
        if(restriction.getTime().equals(""))
            restriction.setTime(null);
        if(restriction.getCountry().equals(""))
            restriction.setCountry(null);
        return filmSortService.getFilmTotalPageByRestriction(20,restriction);
    }

    @RequestMapping("/sortTheFilms")
    public @ResponseBody List<Film> sort(Restriction restriction, Integer page){
        if(restriction.getTime().equals(""))
            restriction.setTime(null);
        if(restriction.getCountry().equals(""))
            restriction.setCountry(null);
        List<Film> list = filmSortService.filter(page*20, 20,restriction);
        return list;
    }
}
