public class alone09 {
    public static void main(String[]args){
        
        int[] data = new int[]{30,20,10,50,40};

        for(int i=0;i<data.length;i++) {
        for(int j=i+1;j<data.length;j++) {
            if(data[i]>data[j]) {
                int back = data[i];
                data[i] = data[j];
                data[j] = back;
            }
        }
        System.out.println(data[i]);
        }
    }
}
