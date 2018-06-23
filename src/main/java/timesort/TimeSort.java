package timesort;


import entityPO.Review;
import enumtype.TimeType;
import entityVO.Time;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 * Created by mac on 2017/3/6.
 */
public class TimeSort {
    /**
     * 根据时间，得到评论数的增长
     */
    public static Map<String,Integer> reviewTimeSort(List<Review> reviewList , TimeType type){

        //使用treeMap
        Map<String,Integer> treeMap = new TreeMap<>((o1, o2) -> {
            LocalDate t1 = stringToDate(o1);
            LocalDate t2 = stringToDate(o2);
            return t1.compareTo(t2);
        });

        for(Review review : reviewList){
            String yearAndMonth = "";
            if(type.equals(TimeType.Day)){
                yearAndMonth = review.getTime().getYear() + "_" + review.getTime().getMonthValue() + "_"
                        + review.getTime().getDayOfMonth();
            }
            if(type.equals(TimeType.Month)) {
                yearAndMonth = review.getTime().getYear() + "_" + review.getTime().getMonthValue();
            }
            if(type.equals(TimeType.Quarter)){
                int quarter = (review.getTime().getMonthValue()-1)/3 + 1;
                yearAndMonth = review.getTime().getYear() + "_" +  quarter + "quarter";
            }
            if (!treeMap.containsKey(yearAndMonth)) {
                treeMap.put(yearAndMonth, 1);
            } else {
                int k = treeMap.get(yearAndMonth) + 1;
                treeMap.put(yearAndMonth, k);
            }
        }

        //累加操作
        Object[] temp = treeMap.values().toArray();
        int[] result = new int[temp.length];
        for(int i=0;i<temp.length;i++)
            result[i] = (Integer)temp[i];
        for(int i=1;i<result.length;i++)
            result[i] += result[i-1];

        //计算完毕更新value
        int i=0;
        for(String key : treeMap.keySet()) {
            treeMap.put(key, result[i++]);
        }

        return treeMap;
    }

    /**
     * 根据时间，得到评分的增长
     */
    public static Map<String,Double> scoreTimeSort(List<Review> reviewList) {

        //使用treeMap
        Map<String, Double> treeMap = new TreeMap<>((o1, o2) -> {
            LocalDate t1 = stringToDate(o1);
            LocalDate t2 = stringToDate(o2);
            return t1.compareTo(t2);
        });

        //记录每天的评论数
        Map<String, Integer> record = new TreeMap<>((o1, o2) -> {
            LocalDate t1 = stringToDate(o1);
            LocalDate t2 = stringToDate(o2);
            return t1.compareTo(t2);
        });

        //结果
        Map<String, Double> resultMap = new TreeMap<>((o1, o2) -> {
            LocalDate t1 = stringToDate(o1);
            LocalDate t2 = stringToDate(o2);
            return t1.compareTo(t2);
        });

        for (Review review : reviewList) {
            if(review.getTime() != null && review.getScore() != 0) {
                //年月日
                String ymd = "";
                ymd = review.getTime().getYear() + "_" + review.getTime().getMonthValue() + "_"
                        + review.getTime().getDayOfMonth();

                if (!treeMap.containsKey(ymd)) {
                    treeMap.put(ymd, review.getScore());
                    record.put(ymd, 1);
                } else {
                    double k = treeMap.get(ymd) + review.getScore();
                    treeMap.put(ymd, k);
                    int l = record.get(ymd) + 1;
                    record.put(ymd, l);
                }
            }
        }

        //逐次求均值操作
        Object[] temp = treeMap.values().toArray();
        Object[] num = record.values().toArray();
        double[] result = new double[temp.length];
        int[] numOfReview = new int[num.length];
        for(int i=0;i<temp.length;i++) {
            result[i] = (Double) temp[i];
            numOfReview[i] = (Integer) num[i];
        }

        //单独处理第一位
        result[0] = result[0] / numOfReview[0];

        for(int i=1;i<result.length;i++) {
            numOfReview[i] += numOfReview[i-1];
            result[i] += result[i - 1]*(numOfReview[i-1]);
            result[i] /= numOfReview[i];
        }

        //计算完毕更新value
        int i=0;
        double value = nBitFloat(result[0],1);
        for(String key : treeMap.keySet()) {
            if(i ==0 || nBitFloat(result[i],1) != value) {
                resultMap.put(key, nBitFloat(result[i++], 1));
                if(i != 0)
                    value = nBitFloat(result[i-1],1);
            }else
                i++;
        }

        return resultMap;
    }

    /**
     * 根据限制时间范围，得到数据的增长
     */
    public static <T> Map<String,T> Sort(Time<T> time_){
        //存放符合条件的时间map
        Map<String, T> treeMap = new TreeMap<>((o1, o2) -> {
            LocalDate t1 = stringToDate(o1);
            LocalDate t2 = stringToDate(o2);
            return t1.compareTo(t2);
        });

        Map<String, T> map = time_.getMap();

        LocalDate t1 = time_.getStartTime();
        LocalDate t2 = time_.getEndTime();

        for(String key : map.keySet()){
            LocalDate time = stringToDate(key);
            if((time.isAfter(t1)||time.isEqual(t1)) && (time.isBefore(t2)||time.isEqual(t2)) )
                treeMap.put(key,map.get(key));
        }

        return treeMap;
    }

    /**
     * 将String转化为Date
     */
    private static LocalDate stringToDate(String str){
        int year = Integer.parseInt(str.split("_")[0]);
        int month = -1;
        int day = -1;
        if(str.split("_").length == 2) {
            if (!str.contains("quarter"))
                month = Integer.parseInt(str.split("_")[1]);
            else
                month = Integer.parseInt(str.split("_")[1].substring(0, 1));
            day = 1;
        }

        if(str.split("_").length == 3) {
            month = Integer.parseInt(str.split("_")[1]);
            day = Integer.parseInt(str.split("_")[2]);
        }
        return LocalDate.of(year,month,day);
    }

    /**
     * 将评分处理为n位小数
     */
    private static double nBitFloat(double score,int n){
        BigDecimal bg = new BigDecimal(score);
        double result = bg.setScale(n, BigDecimal.ROUND_HALF_UP).doubleValue();
        return result;
    }

}
