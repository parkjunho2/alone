import java.util.Random;
import java.util.Scanner;

public class alone05 {
    public static void main(String[]args){
        Scanner sc = new Scanner(System.in);
        Random rd = new Random();
        int com = rd.nextInt(1000);
        int count = 1;
        while(true){
            System.out.print("컴퓨터 숫자를 맞추세요: ");
            int num = sc.nextInt();
            if(count>9){
            System.out.print("기회 10번 초과하여 실패했습니다.");
            break;
            }

        if(num==com){
            System.out.println("맞췄습니다."+"총"+count+"번");
            break;
        } else if(num>com){
            System.out.println("숫자가 더 작습니다."+" 남은 횟수"+(10-count)+"번");
        } else {
            System.out.println("숫자가 더 큽니다."+" 남은 횟수"+(10-count)+"번");
        } count++;
    }
    }//1dd
}