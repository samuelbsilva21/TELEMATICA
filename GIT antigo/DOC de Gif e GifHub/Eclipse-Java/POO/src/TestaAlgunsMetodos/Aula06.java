package TestaAlgunsMetodos;

public class Aula06 {
 
	int tempodura��o;
	String texto;

	String meuMetodo() { //metodo apenas para retorno
		return texto; 
		}
	String meuMetodo2(String s) {
		return s;	
	} // metodo recebe algo e retorna
	
	void meuMetodo3(String s) { // recebe e n�o retorna
			System.out.println(s);	
	}
	void meuMetodo4(String s) { //n�o recebe e n�o retorna
		System.out.println(texto);
	}
	
	
	public static void main (String[]) {
		Aula06 a6 = new Aula06();
		
		a6.texto = "Peixe boi";
		a6.tempodura��o = 40;
		String temp = tes.meuMetodo();
		System.out.println(temp);
	    
		tes.meuMetodo ("Ol�");
	}
	}
}
