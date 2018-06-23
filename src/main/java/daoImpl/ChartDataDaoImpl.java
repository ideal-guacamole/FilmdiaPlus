package daoImpl;

import Util.Path;
import dao.ChartDataDao;
import entityVO.LineChartInfo;
import entityVO.RadarChartInfo;
import entityVO.ScatterChartInfo;
import entityVO.StackChartInfo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import java.io.*;
import java.time.LocalDate;
import java.util.*;

/**
 * Created by mac on 2017/5/25.
 */
@Repository("chartDataDao")
public class ChartDataDaoImpl implements ChartDataDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.openSession();
    }

    @Override
    public RadarChartInfo getRadarChartInfo(String tag, int year) {
        if(year < 1926)
            year = 1926;

        File file = new File(Path.getProjectPath() + "statistic/EachTag.txt");
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        String line ="";
        try {
            while ((line = reader.readLine())!=null){
                String read_tag = line.split(":")[0];
                String read_year = line.split("/")[6];
                if(read_tag.equals(tag) && read_year.equals(year +""))
                    break;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        String data = line.split(":")[1];
        double score = Double.parseDouble(data.split("/")[0]);
        long gross = Integer.parseInt(data.split("/")[1]);
        long reviewNumber = Integer.parseInt(data.split("/")[2]);
        long budget = Integer.parseInt(data.split("/")[3]);
        long runtime = Integer.parseInt(data.split("/")[4]);
        long ratingNum = Integer.parseInt(data.split("/")[5]);
        return new RadarChartInfo(score,gross,reviewNumber,budget,runtime,ratingNum);
    }

    @Override
    public List<Double> getBoxChartInfoForEachYearScore(int year) {
        Session session = getSession();
        Query q = session.createQuery("select f.score from FilmDB f where f.onTime >= :start and f.onTime <= :ending");
        LocalDate start = LocalDate.of(year,1,1);
        LocalDate ending = LocalDate.of(year,12,31);
        q.setParameter("start",start);
        q.setParameter("ending",ending);
        List<Double> result = q.getResultList();
        session.close();

        return result;
    }

    @Override
    public List<ScatterChartInfo> getScatterChartInfoForScoreAndGrossBudget() {
        File file = new File(Path.getProjectPath() + "statistic/EachYearScoreAndGrossBudget.txt");
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        String line;
        List<ScatterChartInfo> scatterChartInfoList = new ArrayList<>();
        try {
            int i = 0;
            int year = 0;
            while ((line = reader.readLine())!=null){
                if(i % 6 == 0){
                    year = Integer.parseInt(line);
                    i++;
                    continue;
                }
                if(line.equals("null")) {
                    i++;
                    continue;
                }
                String scoreInterval;
                if(i % 6 == 1)
                    scoreInterval = "below 5";
                else if (i % 6 == 2)
                    scoreInterval = "5 to 6";
                else if (i % 6 == 3)
                    scoreInterval = "6 to 7";
                else if (i % 6 == 4)
                    scoreInterval = "7 to 8";
                else
                    scoreInterval = "over 8";

                int avg_budget = Integer.parseInt(line.split("/")[0].split(":")[1]);
                int avg_gross = Integer.parseInt(line.split("/")[1].split(":")[1]);
                int number = Integer.parseInt(line.split("/")[2].split(":")[1]);

                scatterChartInfoList.add(new ScatterChartInfo(year,scoreInterval,avg_budget,avg_gross,number));
                i++;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return scatterChartInfoList;
    }

    @Override
    public List<ScatterChartInfo> getScatterChartInfoForYTBClickAndGross() {
        File file = new File(Path.getProjectPath() + "statistic/YouTuBeAndGross.txt");
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        String line;
        List<ScatterChartInfo> result = new ArrayList<>();
        try {
            while ((line = reader.readLine())!=null){
                int click_times = Integer.parseInt(line.split(" ")[0].split(":")[1]);
                int gross = Integer.parseInt(line.split(" ")[1].split(":")[1]);
                result.add(new ScatterChartInfo(click_times, null, 0,gross,0));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Map<String, Integer>> getPieChartInfoForEachYearTagTop5() {
        File file = new File(Path.getProjectPath() + "statistic/EachYearTagTop.txt");
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        String line;
        List<Map<String, Integer>> result = new ArrayList<>();
        try {
            while ((line = reader.readLine())!=null){
                Map<String, Integer> map = new LinkedHashMap<>();
                String data = line.split(":")[1];
                for(String oneTag : data.split(" ")){
                    map.put(oneTag.split("/")[0],Integer.parseInt(oneTag.split("/")[1]));
                }
                result.add(map);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public Map<String, Integer> getPieChartInfoForHighScoreTagTop10() {
        File file = new File(Path.getProjectPath() + "statistic/HighScoreTagTop.txt");
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        String line;
        Map<String, Integer> map = new LinkedHashMap<>();
        try {
            while ((line = reader.readLine())!=null){
                map.put(line.split("/")[0],Integer.parseInt(line.split("/")[1]));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return map;
    }

    @Override
    public List<StackChartInfo> getStackChartInfoForTagAndGross() {
        return processDataForStackChart("TagAndGross.txt");
    }

    @Override
    public List<StackChartInfo> getStackChartInfoForTagAndScore() {
        return processDataForStackChart("TagAndScore.txt");
    }

    @Override
    public List<LineChartInfo> getLineChartInfoForDoubanAndIMDB() {
        File file = new File(Path.getProjectPath() + "statistic/EachTagForDouBanAndIMDB.txt");
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        String line;
        List<LineChartInfo> lineChartInfoList = new ArrayList<>();
        try {
            while ((line = reader.readLine())!=null){
                String tag = line.split(":")[0];
                String data = line.split(":")[1];
                double avg_imdb = Double.parseDouble(data.split("/")[0].split(" ")[1]);
                double avg_douban = Double.parseDouble(data.split("/")[1].split(" ")[1]);
                lineChartInfoList.add(new LineChartInfo(tag,avg_imdb,avg_douban,0,0));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return lineChartInfoList;
    }

    @Override
    public List<LineChartInfo> getLineChartInfoForEachYearScore() {
        File file = new File(Path.getProjectPath() + "statistic/EachYearMaxMinAvgScore.txt");
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        String line;
        List<LineChartInfo> lineChartInfoList = new ArrayList<>();
        try {
            while ((line = reader.readLine())!=null){
                String year = line.split(":")[0];
                String data = line.split(":")[1];
                double avg = Double.parseDouble(data.split(" ")[0].split("/")[1]);
                double max = Double.parseDouble(data.split(" ")[1].split("/")[1]);
                double min = Double.parseDouble(data.split(" ")[2].split("/")[1]);
                double variance = Double.parseDouble(data.split(" ")[3].split("/")[1]);
                lineChartInfoList.add(new LineChartInfo(year,avg,max,min,variance));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return lineChartInfoList;
    }


    private List<StackChartInfo> processDataForStackChart(String fileName){
        File file = new File(Path.getProjectPath() + "statistic/" + fileName);
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        String line;
        List<StackChartInfo> stackChartInfoList = new ArrayList<>();
        try {
            while ((line = reader.readLine())!=null){
                String tag = line.split(":")[0];
                String data = line.split(":")[1];
                double avg = Double.parseDouble(data.split(" ")[0].split("/")[1]);
                double max = Double.parseDouble(data.split(" ")[1].split("/")[1]);
                double min = Double.parseDouble(data.split(" ")[2].split("/")[1]);
                if(fileName.equals("TagAndGross.txt"))
                    stackChartInfoList.add(new StackChartInfo<>(tag, (int) avg, (int) max, (int) min));
                else
                    stackChartInfoList.add(new StackChartInfo<>(tag, avg,max,min));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return stackChartInfoList;
    }
}
