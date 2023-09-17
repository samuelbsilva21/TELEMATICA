import java.util.Scanner;

public class areadocirculo {
	private static Scanner scan;

	public static void main(String args[]) {
		scan = new Scanner(System.in);
		
		double raio, area;
		
		System.out.print("Digite a tamanho do raio:");
		raio = scan.nextDouble();
		
		area = 2* Math.PI *raio ;
		
		System.out.println("A area do circulo é " + area);
	}
}
