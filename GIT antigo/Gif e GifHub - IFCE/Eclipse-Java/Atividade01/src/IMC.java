import java.util.Scanner;
public class IMC {
	private static Scanner scan;

	public static void main(String args[]) {
		scan = new Scanner(System.in);
		
		double peso, altura, imc;
		
		System.out.print("Digite a sua altura:");
		altura = scan.nextDouble();
		System.out.print("Digite seu peso:");
		peso = scan.nextDouble();
		
		imc = peso/ Math.pow(altura, 2);
		
		System.out.println("Seu indice de massa corporal é " + imc);
	
	}
}