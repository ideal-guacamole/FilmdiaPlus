package wordcount;

import Util.Path;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by mac on 2017/3/13.
 */
public class WordStopTable {

    public static List<String> getStopWordList (){
        List<String> stopWordList = new ArrayList<>();
        File file = new File(Path.getProjectPath() + "word/stop.txt");
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        String word;
        try {
            while ((word = reader.readLine())!=null){
                word = word.replaceAll(" ","");
                stopWordList.add(word);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return stopWordList;
    }

}
