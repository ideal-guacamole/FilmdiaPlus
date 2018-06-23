package entityPO;

import enumtype.ProducerType;

import javax.persistence.*;

/**
 * Created by mac on 2017/5/16.
 */
@Entity
public class ProducerDB {

    private int producerID;
    private String imdb_producerID;
    private String name;
    private ProducerType producerType;
    private String films;
    private String image;

    public ProducerDB(){
    }

    public ProducerDB(String imdb_producerID, String name, ProducerType producerType, String films, String image) {
        this.imdb_producerID = imdb_producerID;
        this.name = name;
        this.producerType = producerType;
        this.films = films;
        this.image = image;
    }

    @Id
    @GeneratedValue
    public int getProducerID() {
        return producerID;
    }

    public void setProducerID(int producerID) {
        this.producerID = producerID;
    }

    @Column(length = 50)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(unique = true,length = 9)
    public String getImdb_producerID() {
        return imdb_producerID;
    }

    public void setImdb_producerID(String imdb_producerID) {
        this.imdb_producerID = imdb_producerID;
    }

    @Enumerated(EnumType.STRING)
    public ProducerType getProducerType() {
        return producerType;
    }

    public void setProducerType(ProducerType producerType) {
        this.producerType = producerType;
    }

    public String getFilms() {
        return films;
    }

    public void setFilms(String films) {
        this.films = films;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
