import java.util.Scanner;

public class triangulo {
	private static Scanner scan;

	public static void main(String args[]) {
		scan = new Scanner(System.in);
		
		double base, altura, area;
		
		System.out.print("Digite a tamanho da base:");
		base = scan.nextDouble();
		System.out.print("Digite a altura:");
		altura = scan.nextDouble();
		
		area = (base*altura)/2;
		
		System.out.println("A area do triangulo é " + area);
	}
}
