package petshop;

public class Patshop {
	String CNPJ;
	Endereco endereco;
	Cao cao;
	Gato gato;
	private static double pg1, pg2;

	public static void main (String[] args) {
		
		//Cachorro
		Cao Major = new Cao();
		System.out.println("O tipo dele é " + Major.tipo());
		System.out.println("Ele se alimenta de " + Major.alimentar()+ "gm");
				
		//Gato
		Gato maiorpeso = new Gato();
		pg1 = 150;
		pg2 = 200;
		maiorpeso.comparar(pg1, pg2);

}
}