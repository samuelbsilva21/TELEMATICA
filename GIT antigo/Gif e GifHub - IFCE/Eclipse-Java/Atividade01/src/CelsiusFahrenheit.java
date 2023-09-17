import java.util.Scanner;
public class CelsiusFahrenheit {
	private static Scanner scan;

	public static void main(String args[]) {
		scan = new Scanner(System.in);
		
		int celsius, conta;
		
		System.out.print("Digite a temperatura em celsius:");
		celsius = scan.nextInt();
		
		conta = (celsius * 9/5) + 32;
		
		System.out.println("A temperatura em Fahrenheit é " + conta);
	
	}
}
