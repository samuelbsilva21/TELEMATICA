//Este programa calcula sua média final e diz se vc passou nesta disciplina

#include <stdio.h>
#include <math.h>
#include <locale.h>


 main(){
 	int vs1, vs2, vs3,vs4,vs42,m,m1,w;
 	setlocale(LC_ALL,"portuguese");
 	
  	printf("Digite a primeira avaliação: \n");
 	    scanf("%d",&vs1);
 	
 	    printf("Digite a segunda avaliação: \n");
 	    scanf("%d",&vs2);
 	
 	    printf("Digite a terceira avaliação: \n");
 	    scanf("%d",&vs3);
 	
 		vs4=28-(vs1+vs2+vs3);
 	    printf("Em uma media aritimética precisaria de: %d\n",vs4);
 	    
 	    m1=(vs1+vs2)/2;
 	    w=(m1-35)/2;
		vs42=w-(vs3/2); 
		
	printf("Em uma media ponderada precisaria de: %d\n",vs42);

 }
