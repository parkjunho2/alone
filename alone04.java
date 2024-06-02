public class alone04 {
    public static void main(String[]args){
        /*int sero = 1;
        while(sero<=10){
            int garo = 1;
            while(garo<=10){
                System.out.print(garo+" ");
                if(garo%10==0){
                    System.out.println();}
                    if(sero==garo) {
                    System.out.println();
                    break;
                }
                garo++;
            }
            sero++; 
        }
    }*/
 int sero =10;
 while(sero>0){
    int garo = 10;
    while(garo>0){
        System.out.print(garo+" ");
        if(garo==sero){
            System.out.println();
        if(garo%10==0){
        System.out.println();}
    
        break;
        }
        garo--;
    }
 sero--;
 }
}
}

