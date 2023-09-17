import java.util.Scanner;

public class QuadradoCubo {
	private static Scanner scan;

	public static void main(String args[]) {
		scan = new Scanner(System.in);
		
		double num, quadrado, cubo;
		
		System.out.print("Digite o numero para potenciação :");
		num = scan.nextDouble();
		
		quadrado = Math.pow(num, 2); 
		cubo = Math.pow(num, 3);
		
		System.out.println("Este numero ao quadrado é: " + quadrado);
		System.out.println("Este numero ao quadrado é: " + cubo);
		
	}
}
