package TestaAlgunsMetodos;

public class calculadora {

	int num1;
	int num2;
	
	double soma() {  
		return num1 + num2;
	}

	double sub(String s) {
		return num1 - num2;
	}                             

	double divi(String s) { 
		return num1 / num2;
	}

	double multi(String s) { 
		return num1 * num2;
	}


	public static void man(String[] args) {
	
	calculadora c1 = new calculadora;
	
	}
	
}