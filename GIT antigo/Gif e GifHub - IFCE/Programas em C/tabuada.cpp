//Este programa escreve a tabuada de um n�mero natural
#include<stdio.h>//printf e scanf
#include<locale.h>//setlocale
main()
{  int x,fator=1,multiplo;
   setlocale(LC_ALL,"Portuguese");
   printf("Digite um n�mero natural\n");
   scanf("%d",&x);
   do
   {  multiplo=fator*x;
      printf("%d x %d = %d\n",fator,x,multiplo);
      fator=fator+1;
   } while(fator<=10);
   printf("Fim.");
}
