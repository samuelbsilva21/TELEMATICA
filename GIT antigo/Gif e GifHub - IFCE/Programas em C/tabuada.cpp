//Este programa escreve a tabuada de um número natural
#include<stdio.h>//printf e scanf
#include<locale.h>//setlocale
main()
{  int x,fator=1,multiplo;
   setlocale(LC_ALL,"Portuguese");
   printf("Digite um número natural\n");
   scanf("%d",&x);
   do
   {  multiplo=fator*x;
      printf("%d x %d = %d\n",fator,x,multiplo);
      fator=fator+1;
   } while(fator<=10);
   printf("Fim.");
}
