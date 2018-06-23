package Util;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/**
 * Created by LWY on 2017/6/10.
 */
public class DebugOutput {
    public static void output(String a){
        String filePath = "/home/log.txt";
        File file = new File(filePath);
        boolean result = false;
        if(!file.exists()){
            try {
                result = file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        FileWriter fw = null;
        try {
            fw = new FileWriter(filePath);
            fw.write(a);
            fw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
