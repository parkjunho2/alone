import java.util.Random;
import java.util.Scanner;

public class alone07 {
    public static void main(String[]args){
        Random rd = new Random();
        int fnum = rd.nextInt(10);
        int snum = rd.nextInt(10);
        System.out.println(fnum);
        System.out.print("두번째 수가 더 1:높다,2:낮다:,3.같다 ");
        Scanner sc = new Scanner(System.in);
        int user = sc.nextInt();
        System.out.println(snum);

        if(user==1&&fnum<snum){
            System.out.println("맞췄습니다.");
        }
        else if(user==2&&fnum>snum){
            System.out.println("맞췄습니다.");
        }
        else if(user==33&&fnum==snum){
            System.out.println("맞췃습니다.");
        }
        else {
            System.out.println("틀렸습니다.");
             }
                }
            }
