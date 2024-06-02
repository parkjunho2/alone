import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class alon02 {
public static void main(String[] args){
    
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");

    LocalDate nows = LocalDate.now();
    String time = nows.format(formatter);
    int today = Integer.parseInt(time);
    int hi = 99999999;

    int number = hi-today;

    System.out.println(number);

    }
}


import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public static vodi main(String[] args){
    LocalDate now = LocalDate.now();
    DateTimeFormatter matter = DateTimeFormatter.ofPattern("yyyy");
    int today = Integer.parseInt(now.format(matter));

}


