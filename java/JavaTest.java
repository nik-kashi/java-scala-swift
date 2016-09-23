public class JavaTest{
    public static void main(String[] args){
      long j=0;
      long k=0;
        for (int i=1 ; i<=1000000000;i++){
          k += j;
          if(i%3 == 1){
            j++;
        }
      }
      System.out.println(j);
      System.out.println(k);
    }
}
