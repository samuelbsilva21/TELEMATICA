package Musica;

public class Rotina {

	public static void main(String[] args) {
	
		Musico m = new Musico();
		Violão v = new Violão(120);
		Guitarra g  = new Guitarra(120);
		Piano p = new Piano(60);
		
		m.estudar(g);
		m.estudar(v);  
		m.estudar(p);
		
		System.out.println(m.getTempoTotaldeestudo()/60 + "horas e" +m.getTempoTotaldeestudo()%60+ "minutos");
	}

}
