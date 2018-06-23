package handler;

import entityPO.Film;
import entityPO.Producer;
import enumtype.FilmType;
import enumtype.ProducerType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.FilmSearchService;
import service.ProducerDisplayService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by mac on 2017/5/15.
 */
@Controller
@RequestMapping("/film")
public class FilmSearchHandler {

    @Autowired
    private FilmSearchService filmSearchService;

    @Autowired
    private ProducerDisplayService producerDisplayService;

    @RequestMapping("/getFilm")
    public @ResponseBody Film getFilm(@RequestBody Integer filmID){
        Film film = filmSearchService.getFilm(filmID);
        return getConcreteActorAndDirector(film);
    }

    @RequestMapping("/getFilmFromUpdate")
    public @ResponseBody Film getFilmFromUpdate(@RequestBody Integer filmID){
        Film film = filmSearchService.getFilmFromUpdate(filmID);
        return getConcreteActorAndDirector(film);
    }

    @RequestMapping("/getFilmsByName")
    public @ResponseBody List<Film> getFilms(@RequestBody String filmName){
        return filmSearchService.getFilms(filmName);
    }

    @RequestMapping("/getFilmByType")
    public @ResponseBody List<Film> getFilmByType(FilmType filmType){
        return filmSearchService.getFilmByType(filmType);
    }

    @RequestMapping("/getFilmName")
    public @ResponseBody String getFilmName(@RequestBody String imdb_filmID){
        return filmSearchService.getFilmName(imdb_filmID);
    }

    private Film getConcreteActorAndDirector(Film film){
        List<String> imdb_ID = film.getActors();
        imdb_ID.addAll(film.getDirectors());
        List<Producer> producerList = producerDisplayService.getProducerInfo(imdb_ID);
        List<String> director = new ArrayList<>();
        List<String> actor = new ArrayList<>();
        for(Producer producer : producerList){
            if(producer.getProducerType().equals(ProducerType.Actor)) {
                actor.add(producer.getName());
                actor.add(producer.getImage());
            }
            else {
                director.add(producer.getName());
                director.add(producer.getImage());
            }
        }
        film.setActors(actor);
        film.setDirectors(director);

        return film;
    }
}
