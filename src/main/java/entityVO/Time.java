package entityVO;

import java.time.LocalDate;
import java.util.Map;

/**
 * Created by mac on 2017/3/27.
 */
public class Time<T> {
    private Map<String,T> map;
    private LocalDate startTime;
    private LocalDate endTime;

    public Time(Map<String, T> map, LocalDate startTime, LocalDate endTime) {
        this.map = map;
        this.startTime = startTime;
        this.endTime = endTime;
    }

    public Map<String, T> getMap() {
        return map;
    }

    public void setMap(Map<String, T> map) {
        this.map = map;
    }

    public LocalDate getStartTime() {
        return startTime;
    }

    public void setStartTime(LocalDate startTime) {
        this.startTime = startTime;
    }

    public LocalDate getEndTime() {
        return endTime;
    }

    public void setEndTime(LocalDate endTime) {
        this.endTime = endTime;
    }
}
