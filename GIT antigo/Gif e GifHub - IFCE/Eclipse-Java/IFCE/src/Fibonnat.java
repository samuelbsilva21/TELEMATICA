
public class Fibonnat {
	public static void main(String args[]) {
		
		long a = 0, b= 1, fi = 0;
		
		for (int i = 1; i < 2000; i++) {
			
			fi = a + b;
		System.out.println(fi);
			b = a;
			a = fi;
		}		
	}
}
