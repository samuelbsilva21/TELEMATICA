//Este programa escreve os 100 primeiros termos da seq��ncia de Fibonacci.
#include<stdio.h>//printf e scanf
#include<locale.h>//setlocale
main()
{  unsigned long int    cont=0,a=1,b=0,c;
   setlocale(LC_ALL,"Portuguese");
   printf("Os 100 primeiros termos de Fibonacci s�o\n");
   do
   {  c=a+b;
      cont=cont+1; 
      a=b;
      b=c;
      printf("%d�) %u\n",cont,c);// %u � usado para imprimir inteiros longos at� o valor de  4.294.967.295
                                 // o inteiro comum s� vai at� o valor de 2.147.483.647
                                 //float vai at� 10E-38 e 10E+38
                                 //o double vai at� 10E-4932 e 10E+4932
   } while(cont<100);
   printf("Fim.");
}
