package Prova;

public abstract class Forma implements Dimensinavel {
	
	public abstract void area();
	private String cor;
	
	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	@Override
	public void redimensional(float fator) {
		// TODO Auto-generated method stub
		
	}

	public void getarea() {
		// TODO Auto-generated method stub
		
	}
	
}
