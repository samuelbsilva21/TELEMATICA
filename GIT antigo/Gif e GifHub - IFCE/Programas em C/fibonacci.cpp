//Este programa escreve os 100 primeiros termos da seqüência de Fibonacci.
#include<stdio.h>//printf e scanf
#include<locale.h>//setlocale
main()
{  unsigned long int    cont=0,a=1,b=0,c;
   setlocale(LC_ALL,"Portuguese");
   printf("Os 100 primeiros termos de Fibonacci são\n");
   do
   {  c=a+b;
      cont=cont+1; 
      a=b;
      b=c;
      printf("%dº) %u\n",cont,c);// %u é usado para imprimir inteiros longos até o valor de  4.294.967.295
                                 // o inteiro comum só vai até o valor de 2.147.483.647
                                 //float vai até 10E-38 e 10E+38
                                 //o double vai até 10E-4932 e 10E+4932
   } while(cont<100);
   printf("Fim.");
}
