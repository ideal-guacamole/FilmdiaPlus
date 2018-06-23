package entityPO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import java.time.LocalDate;

/**
 * Created by mac on 2017/6/8.
 */
@Entity
@IdClass(TrailerClickPK.class)
public class TrailerClick {
    private String imdb_filmID;
    private int click_times;
    private String upload_time;
    private LocalDate update_time;

    @Id
    @Column(length = 9)
    public String getImdb_filmID() {
        return imdb_filmID;
    }

    public void setImdb_filmID(String imdb_filmID) {
        this.imdb_filmID = imdb_filmID;
    }

    public int getClick_times() {
        return click_times;
    }

    public void setClick_times(int click_times) {
        this.click_times = click_times;
    }

    @Column(length = 20)
    public String getUpload_time() {
        return upload_time;
    }

    public void setUpload_time(String upload_time) {
        this.upload_time = upload_time;
    }

    @Id
    public LocalDate getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(LocalDate update_time) {
        this.update_time = update_time;
    }
}
