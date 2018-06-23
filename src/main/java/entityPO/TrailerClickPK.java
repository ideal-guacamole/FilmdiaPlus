package entityPO;

import java.io.Serializable;
import java.time.LocalDate;

/**
 * Created by mac on 2017/6/13.
 */
public class TrailerClickPK implements Serializable {
    private String imdb_filmID;
    private LocalDate update_time;

    public String getImdb_filmID() {
        return imdb_filmID;
    }

    public void setImdb_filmID(String imdb_filmID) {
        this.imdb_filmID = imdb_filmID;
    }

    public LocalDate getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(LocalDate update_time) {
        this.update_time = update_time;
    }

    @Override
    public int hashCode() {
        return this.imdb_filmID.hashCode();
    }

    @Override
    public boolean equals(Object o) {
        if(o instanceof TrailerClickPK) {//判断是否是此对象
            TrailerClickPK pk = (TrailerClickPK) o;//强制转换
            if(this.imdb_filmID.equals(pk.getImdb_filmID()) && this.update_time.equals(pk.getUpdate_time())) {
                return true;//实现了和数据库判断一致
            }
        }
        return false;
    }

}
