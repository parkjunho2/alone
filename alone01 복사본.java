import java.util.Random;
import java.time.LocalDate;

public class alone01 {
    public static void main(String[]args){
    LocalDate today = LocalDate.now();
    System.out.println(today);
    int year = LocalDate.now().getYear();
    System.out.println(year);
    int month = LocalDate.now().getMonthValue();
    System.out.println(month);
    int day = LocalDate.now().getDayOfMonth();
    System.out.println(day);

    Random number = new Random();
    int numbering = number.nextInt(100);
    System.out.println(numbering);
    }   
}