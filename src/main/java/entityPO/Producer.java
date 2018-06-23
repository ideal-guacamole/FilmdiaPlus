package entityPO;


import enumtype.ProducerType;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * Created by mac on 2017/4/16.
 */

public class Producer {

    private int producerID;
    private String imdb_producerID;
    private String name;
    private ProducerType producerType;
    private List<String> films;
    private String image;

    public Producer() {
    }

    public Producer(int producerID, String imdb_producerID, String name, ProducerType producerType, List<String> films, String image) {
        this.producerID = producerID;
        this.imdb_producerID = imdb_producerID;
        this.name = name;
        this.producerType = producerType;
        this.films = films;
        this.image = image;
    }

    public Producer(ProducerDB producerDB) {
        this.producerID = producerDB.getProducerID();
        this.imdb_producerID = producerDB.getImdb_producerID();
        this.name = producerDB.getName();
        this.producerType = producerDB.getProducerType();
        this.image = producerDB.getImage();

        this.films = new ArrayList<>();
        Collections.addAll(films, producerDB.getFilms().split("/"));
    }

    public int getProducerID() {
        return producerID;
    }

    public void setProducerID(int producerID) {
        this.producerID = producerID;
    }

    public String getImdb_producerID() {
        return imdb_producerID;
    }

    public void setImdb_producerID(String imdb_producerID) {
        this.imdb_producerID = imdb_producerID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ProducerType getProducerType() {
        return producerType;
    }

    public void setProducerType(ProducerType producerType) {
        this.producerType = producerType;
    }

    public List<String> getFilms() {
        return films;
    }

    public void setFilms(List<String> films) {
        this.films = films;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
