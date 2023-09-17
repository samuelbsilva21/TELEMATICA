package petshop;

public class Gato {

	String nome;
	String raca;
	double peso;
	double racao = 20.6;
	
	public void comparar(double g1, double g2) {
		if (g1 > g2) {
			System.out.println("g1 e mais pesado");
		} else {
			System.out.println("g2 é mais pesado");
		}
		
	}
	
	 double alimentar() {
			return racao;
		} 
	   
}
