package TestaAlgunsMetodos;

public class tes {

	static String texto;
	
	String meuMetodo(String[] args ) {
		return texto;
	}
	
	public static void main(String[] args) {
		Aula06 a6 = new Aula06();
		
		a6.texto = "Peixe boi";
		a6.tempoduração = 40;
		String temp = tes.meuMetodo();
		System.out.println(temp);
	    
		tes.meuMetodo ("Olá");
	}
}
