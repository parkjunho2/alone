import java.util.Random;

public class alone10 {
    public static void main(String[]args) {
    Random rd = new Random();
    int[] lotto = new int[6];

    int tmp = 0;
    int idx =0;
    int same = 0;

    for(int i=0;i<6;i++) {
            tmp = rd.nextInt(45)+1;
            lotto[idx]=tmp; 
            if(i==0) {
                lotto[idx] = tmp;
                idx++; 
            }
            else{
                for(int k=0;k<idx ;k++) {
                    if(lotto[k]==tmp){
                        same=true;
                        break;
                    } 
                    else {
                         
                    }
                    if(!same) {
                        lotto[idx] =tmp;
                        idx++;
                    }
                    else{
                        i--;
                    }
                }
            }
            System.out.println(lotto);
        }
    }
}
