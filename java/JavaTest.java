import java.util.stream.IntStream;

public class JavaTest{
    public static void main(String[] args){
      final long[] j = {0L, 0L};
      IntStream.rangeClosed(0, 1_000_000_000)/*.parallel() todo: because of sideeffect*/
      .forEach(i -> {
          j[1] = j[0]+j[1];
          if (i % 3 == 1) {
              j[0]++;
          }
      });
      System.out.println(j[0]);
      System.out.println(j[1]);
    }
}
