package petshop;

public class teste {

	private static Endereco shop01;
	private static Patshop pet1;
	private static Cao major;
	private static Gato miau1;
	private static Gato miau2;
	private static double pg1, pg2;

	public static void main (String[] args) {
		shop01 = new Endereco();	
		
		shop01.logradouro = "rua cesario lange";
		shop01.CEP = "60583000";
		shop01.numero = 543;
		
		pet1 = new Patshop();
		pet1.endereco = shop01;
		
		major = new Cao();
		major.tipo = "viralata";
		major.nome = "major";
		
		System.out.println(major.nome);
		System.out.println(major.tipo);
		System.out.println(major.nome + " se alimenta de " + major.alimentar()+ "gm");
		
		
		miau1 = new Gato();
		miau1.nome = "bichano";
		miau1.peso = 300;
		miau2 = new Gato();
		miau2.nome = "xaninho";
		miau2.peso= 120;
		
		
		System.out.println(miau1.nome );
		System.out.println(miau2.nome );
		
		
		Gato maiorpeso = new Gato();
		pg1 = miau1.peso;
		pg2 = miau2.peso;
		maiorpeso.comparar(pg1, pg2);

	}
	
}
