package Prova;

import java.util.ArrayList;

public class Principal {

    static ArrayList<Forma> resultado = new ArrayList<>();

	public static void main(String[] args) {

		Circulo c1 = new Circulo(5, "vermelho");
		Circulo c2 = new Circulo(3, "azul");
		Quadrado q1 = new Quadrado(3, "verde");
		Quadrado q2 = new Quadrado(4, "roxo");

		resultado.add(c1);
		resultado.add(c2);
		resultado.add(q1);
		resultado.add(q1);
		
		System.out.println(c1);

		for (int i = 0; i < resultado.size(); i++) {
			System.out.println("teste "+ resultado.get(i).getCor());
			//System.out.println("teste "+ resultado.get(i).getarea());   //
			
			
			
			// Professor busquei colocar a arraylist mas s� consegui listar a cor . Tive dificuldade em colocar a parte de redimencionar e a parte do fator 2 e soma. 
		}
	}
}
