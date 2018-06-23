package entityVO;

/**
 * Created by mac on 2017/5/31.
 */
public class StackChartInfo <T>{
    private String tag;
    private T avg;
    private T max;
    private T min;

    public StackChartInfo() {
    }

    public StackChartInfo(String tag, T avg, T max, T min) {
        this.tag = tag;
        this.avg = avg;
        this.max = max;
        this.min = min;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public T getAvg() {
        return avg;
    }

    public void setAvg(T avg) {
        this.avg = avg;
    }

    public T getMax() {
        return max;
    }

    public void setMax(T max) {
        this.max = max;
    }

    public T getMin() {
        return min;
    }

    public void setMin(T min) {
        this.min = min;
    }

    @Override
    public String toString() {
        return "StackChartInfo{" +
                "tag='" + tag + '\'' +
                ", avg=" + avg +
                ", max=" + max +
                ", min=" + min +
                '}';
    }
}
