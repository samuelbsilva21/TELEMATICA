import java.util.Scanner;

public class voto {
	private static Scanner scan;

	public static void main(String args[]) {
		scan = new Scanner(System.in);
		
		int idade;
		
		System.out.print("Digite dua idade:");
		idade = scan.nextInt();
		
		if (idade < 16) 
		{
			System.out.print("Voc� tem " + idade + ",e o voto � para maiores de 16");
		}
		else {
			 if (idade > 64 ) {
				 System.out.print("Voc� j� completou " + idade + ", portanto seu voto � facultativo" );
			 }
			 else {
				 System.out.print("Seu voto � obrigat�rio !");
			 }
		}
	}
}