package Musica;

public class Musico {
	
	int tempoTotaldeestudo;;
	
	public void estudar(Instrumento i) {
		tempoTotaldeestudo += i.getTempo();
	}
	
	public int getTempoTotaldeestudo() {
		return tempoTotaldeestudo;
	}

	public void setTempoTotaldeestudo(int tempoTotaldeestudo) {
		this.tempoTotaldeestudo = tempoTotaldeestudo;
	} 
	
}
