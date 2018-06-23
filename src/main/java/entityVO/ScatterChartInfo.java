package entityVO;

/**
 * Created by mac on 2017/5/31.
 */
public class ScatterChartInfo {
    private int year;
    private String scoreInterval;
    private int avg_budget;
    private int avg_gross;
    private int number;

    public ScatterChartInfo() {
    }

    public ScatterChartInfo(int year, String scoreInterval, int avg_budget, int avg_gross, int number) {
        this.year = year;
        this.scoreInterval = scoreInterval;
        this.avg_budget = avg_budget;
        this.avg_gross = avg_gross;
        this.number = number;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getScoreInterval() {
        return scoreInterval;
    }

    public void setScoreInterval(String scoreInterval) {
        this.scoreInterval = scoreInterval;
    }

    public int getAvg_budget() {
        return avg_budget;
    }

    public void setAvg_budget(int avg_budget) {
        this.avg_budget = avg_budget;
    }

    public int getAvg_gross() {
        return avg_gross;
    }

    public void setAvg_gross(int avg_gross) {
        this.avg_gross = avg_gross;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "ScatterChartInfo{" +
                "year=" + year +
                ", scoreInterval='" + scoreInterval + '\'' +
                ", avg_budget=" + avg_budget +
                ", avg_gross=" + avg_gross +
                ", number=" + number +
                '}';
    }
}
