package wordcount;

import entityPO.Review;

import java.util.*;
import java.util.regex.Pattern;

/**
 * Created by mac on 2017/3/7.
 */
public class WordUtil {

    private static List<String> words = Arrays.asList(".*able",".*ible",".*al",".*ian",".*ant",".*ent",
            ".*ar",".*ary",".*ed",".*en",".*ern",".*ful",".*ic",".*ical",".*ing",".*ish",
            ".*ist",".*ive",".*less",".*ly",".*ous",".*some",".*y",".*ward","good","bad",
            "great","funny");
    private static List<String> stopWords = WordStopTable.getStopWordList();

    public static int wordCount(String text){
        String regex = "[【】、.。,\"!--;:?\'\\]]";
        String value = text;
        value = value.replaceAll(regex," ");
        StringTokenizer tokenizer = new StringTokenizer(value);
        return tokenizer.countTokens();
    }

    public static HashMap<String,Integer> keyWordSearch(List<Review> reviewList, int n) {
        HashMap<String,Integer> result = new LinkedHashMap<>();

        //用HashMap存放<单词:词频>这样一个映射关系
        HashMap<String, Integer> hashMap = new HashMap<String, Integer>();
        //用正则表达式来过滤字符串中的所有标点符号
        String regex = "[【】、.。,\"!--;:?\'\\]]";

        String value;
        for (Review review : reviewList) {
            value = review.getText();
            value = value.replaceAll(regex, " ");
            //使用StringTokenizer来分词
            StringTokenizer tokenizer = new StringTokenizer(value);

            while (tokenizer.hasMoreTokens()) {
                String word = tokenizer.nextToken();
                if(judgeAdj(word)) {
                    if (!hashMap.containsKey(word)) {
                        hashMap.put(word, new Integer(1));
                    } else {
                        int k = hashMap.get(word).intValue() + 1;
                        hashMap.put(word, new Integer(k));
                    }
                }
            }
        }

        //这里将map.entrySet()转换成list
        List<Map.Entry<String,Integer>> list = new ArrayList<Map.Entry<String,Integer>>(hashMap.entrySet());
        //然后通过比较器来实现排序
        //降序排序
        Collections.sort(list, (o1, o2) -> o2.getValue().compareTo(o1.getValue()));

        for(int i=0;i<n&&i<list.size();i++)
            result.put(list.get(i).getKey(),list.get(i).getValue());

        return result;
    }


    private static boolean judgeAdj(String content){

        for(String word : words){
            if(Pattern.matches(word, content))
                if(!stopWords.contains(content.toLowerCase()))
                    return true;
        }

        return false;
    }

}
