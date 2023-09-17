import java.util.Scanner;
public class aulapreprova {
	private static Scanner teclado;
	
	public static void main(String args[])  {
		teclado = new Scanner(System.in);
		
		Double media,num1,num2;
				
		System.out.print("Digite o primeiro numero:");
		num1 = teclado.nextDouble();
		
		System.out.print("Digite outro numero:");
		num2 = teclado.nextDouble(); 
		
		media= (num1 + num2) / 2;
		
		System.out.print("Sua media é " + media);
		
	}
}
