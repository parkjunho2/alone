public class alone03 {
    public static void main(String[]args){
        int dan = 2;
        while(dan<=9){
            System.out.println("===="+dan+"====");
        int gob = 1;
        while(gob<=9){
            System.out.print(dan+"*"+gob+"="+(dan*gob)+"\t");
            if(gob%3==0){System.out.println();}
        gob++;
        }
        System.out.println();
        dan++;
        }
    }
}
