#include<stdio.h>//printf e scanf
#include<locale.h>//setlocale
main()
{  int    n1,n2,n3,n4,m1,m2;
   setlocale(LC_ALL,"Portuguese");
   printf(" Digite sua primeira nota \n");
   scanf("%d", &n1);
   
   printf(" Digite sua primeira nota \n");
   scanf("%d", &n2);
   
   printf(" Digite sua primeira nota \n");
   scanf("%d", &n3);  //descobrindo a nota
   
   m1=n1+n2*2;
   m2=(35-m1)/3;
   n4=(m2*2)-n3;
    // calculo
    // não ta passando o numero correto
   printf("Você precisa de: %d", n4);
   
   
}

