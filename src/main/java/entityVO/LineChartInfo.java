package entityVO;

/**
 * Created by mac on 2017/6/3.
 */
public class LineChartInfo {
    private String x; //tag or time
    private double score_1; // imdb_avg_score Or each year max_score
    private double score_2; // douban_avg_score Or each year min_score
    private double score_3; // each year avg_score
    private double score_4; // each year variance

    public LineChartInfo() {
    }

    public LineChartInfo(String x, double score_1, double score_2, double score_3, double score_4) {
        this.x = x;
        this.score_1 = score_1;
        this.score_2 = score_2;
        this.score_3 = score_3;
        this.score_4 = score_4;
    }

    public String getX() {
        return x;
    }

    public void setX(String x) {
        this.x = x;
    }

    public double getScore_1() {
        return score_1;
    }

    public void setScore_1(double score_1) {
        this.score_1 = score_1;
    }

    public double getScore_2() {
        return score_2;
    }

    public void setScore_2(double score_2) {
        this.score_2 = score_2;
    }

    public double getScore_3() {
        return score_3;
    }

    public void setScore_3(double score_3) {
        this.score_3 = score_3;
    }

    public double getScore_4() {
        return score_4;
    }

    public void setScore_4(double score_4) {
        this.score_4 = score_4;
    }

    @Override
    public String toString() {
        return "LineChartInfo{" +
                "x='" + x + '\'' +
                ", score_1=" + score_1 +
                ", score_2=" + score_2 +
                ", score_3=" + score_3 +
                ", score_4=" + score_4 +
                '}';
    }
}
