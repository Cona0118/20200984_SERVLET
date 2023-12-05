package example;

import java.util.Date;
import java.util.TimeZone;
import java.util.Locale;
import java.text.SimpleDateFormat;

public class ShopTime{
    public String timenow(){
        TimeZone.setDefault(TimeZone.getTimeZone("Asia/Seoul"));
        Locale.setDefault(Locale.KOREA);
        Date now = new Date();
        now.setDate(now.getDate());
        SimpleDateFormat simple = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");
        String strDate = simple.format(now);
        return strDate;
    }
}