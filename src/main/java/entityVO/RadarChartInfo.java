package entityVO;

/**
 * Created by mac on 2017/5/25.
 */
public class RadarChartInfo {
    private double score = 0.0;
    private long gross = 0;
    private long reviewNumber = 0;
    private long budget = 0;
    private long runtime = 0;
    private long ratingNum = 0;

    public RadarChartInfo() {
    }

    public RadarChartInfo(double score, long gross, long reviewNumber, long budget, long runtime, long ratingNum) {
        this.score = score;
        this.gross = gross;
        this.reviewNumber = reviewNumber;
        this.budget = budget;
        this.runtime = runtime;
        this.ratingNum = ratingNum;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public long getGross() {
        return gross;
    }

    public void setGross(long gross) {
        this.gross = gross;
    }

    public long getReviewNumber() {
        return reviewNumber;
    }

    public void setReviewNumber(long reviewNumber) {
        this.reviewNumber = reviewNumber;
    }

    public long getBudget() {
        return budget;
    }

    public void setBudget(long budget) {
        this.budget = budget;
    }

    public long getRuntime() {
        return runtime;
    }

    public void setRuntime(long runtime) {
        this.runtime = runtime;
    }

    public long getRatingNum() {
        return ratingNum;
    }

    public void setRatingNum(long ratingNum) {
        this.ratingNum = ratingNum;
    }

    @Override
    public String toString() {
        return "RadarChartInfo{" +
                "score=" + score +
                ", gross=" + gross +
                ", reviewNumber=" + reviewNumber +
                ", budget=" + budget +
                ", runtime=" + runtime +
                ", ratingNum=" + ratingNum +
                '}';
    }
}
