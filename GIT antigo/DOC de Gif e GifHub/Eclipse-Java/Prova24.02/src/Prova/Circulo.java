package Prova;

public class Circulo extends Forma implements Dimensinavel {

	private float raio;
	
	public Circulo(float raio, String Cor) {
		this.raio = raio;
		this.setCor(Cor);
	}

	/*public Float getRaio() {
		return raio;                                     // N�O SE FAZ NECESSARIO J� QUE FOI INICADO PELO CONSTRUTOR
	}

	public void setRaio(Float raio) {
		this.raio = raio;
	}
*/

	public void area() {
			
	}
	public void redimensional(float fator) {
		super.redimensional(fator);
	}

	public String getCor() {
		return super.getCor();
	}

	public void setCor(String cor) {
		super.setCor(cor);
	}
	public String toString() {
		return "Circulo [raio=" + raio + ", getCor()=" + getCor() + "]";
	}	
}