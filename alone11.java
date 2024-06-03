import java.util.Random;

public class alone11 {
    public static void main(String[]args) {
    Random rd = new Random();

    int[][] num = new int[5][6];

    for(int i=0;i<num.length;i++) {
        for(int j=0;j<num[i].length;j++) {
            num[i][j] = rd.nextInt(45)+1;
            for(int k=0;k<j;k++) {
                if(num[i][j]==num[i][k]) {
                    j--;
                    break;
                }
            }
        }
    }
    for(int i=0;i<num.length;i++) {
        for(int j=0;j<num[i].length-1;j++) {
            for(int k=0;k<num[i].length-1-j;k++) {
                if(num[i][k]>num[i][k+1]) {
                    int tmp = num[i][k];
                    num[i][k] = num[i][k+1];
                    num[i][k+1] = tmp;
                }
            }
        }
    }
    for(int i=0;i<num.length;i++) {
        for(int j=0;j<num[i].length;j++) {
            System.out.print(num[i][j]+" ");
        }
        System.out.println();
    }
}
}