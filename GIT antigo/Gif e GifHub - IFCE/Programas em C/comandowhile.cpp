#include<stdio.h>//printf e scanf
#include<locale.h>//setlocale
main()
{  int x;
   setlocale(LC_ALL,"Portuguese");
   x=4;
   while(x>0)
   {   printf("x=%d\n",x);
       x=x-1;
   } 
   printf("Fim.");
}
