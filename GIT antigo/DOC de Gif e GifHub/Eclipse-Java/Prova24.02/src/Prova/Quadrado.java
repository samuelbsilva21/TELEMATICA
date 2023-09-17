package Prova;

public class Quadrado extends Forma implements Dimensinavel {

	private float lado;

	public Quadrado(float lado, String Cor) {
			this.lado = lado;
			this.setCor(Cor);
	}

	public float getLado() {
		return lado;
	}

	public void setLado(float lado) {
		this.lado = lado;
	}
	 
	public String getCor() {
		return super.getCor();
	}

	public void setCor(String cor) {
		super.setCor(cor);
	}

	public void redimensional(float fator) {
		super.redimensional(fator);
	}

	public String toString() {
		return "Quadrado [lado=" + lado + ", getCor()=" + getCor() + "]";
	}

	public void area() {
		// TODO Auto-generated method stub
		
	}
}