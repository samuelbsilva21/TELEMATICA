
public class Testarconvensoes {
	static public void main1(String[] args) {
		char c = 'a';
		System.out.println("c: " + c);
		int i = c;
		System.out.println("i: " + i);
		float f = c;
		System.out.println("f: " + f);
		int j = 101;
		System.out.println("j: " + j);
		char d = (char) j;
		System.out.println("d: " + d);

		testeShort((short) 3, (short) 4);

	}

	static void testeShort(short x, short y) {
		x = (short) (x * y); // convers�o obrigat�ria
		System.out.println(x);
		x = (short) (x / y); // convers�o obrigat�ria
		System.out.println(x);
		x = (short) (x % y); // convers�o obrigat�ria
		System.out.println(x);
		x = (short) (x + y); // convers�o obrigat�ria
		System.out.println(x);
		x = (short) (x - y); // convers�o obrigat�ria
		System.out.println(x);
		x++; // convers�o desnecess�ria
		System.out.println(x);
		x--; // convers�o desnecess�ria
		System.out.println(x);
	}
	
		static public void main(String[] args) {
			int a = 15;
			int b = 12;
			System.out.println("a = " + a);
			System.out.println("b = " + b);
			System.out.println("a == b -> " + (a == b));
			System.out.println("a != b -> " + (a != b));
			System.out.println("a < b -> " + (a < b));
			System.out.println("a > b -> " + (a > b));
			System.out.println("a <= b -> " + (a <= b));
			System.out.println("a >= b -> " + (a >= b));
			System.out.println("a = b -> " + (a = b));

	
	}

}