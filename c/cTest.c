#include <stdio.h>

int main()
{
  long j=0;
  long k=0;
    for (int i=1 ; i<=1000000000;i = i+1){
      k = k+j;
      if(i%3 == 1){
        j = j+1;
    }
  }
printf("%ld\n",j);
printf("%ld\n",k);
return 0;
}
