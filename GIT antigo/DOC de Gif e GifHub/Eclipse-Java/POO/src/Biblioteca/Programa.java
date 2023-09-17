package Biblioteca;

public class Programa {

	public static void main(String[] args ) {
	
	
	Cliente c1 = new Cliente();
	c1.id = 1234;
	c1.nome = "Samuel";
	
	
	Autor a1 = new Autor();
	a1.nomedoautor = "maria";
	
	Livros l1 = new Livros();
	
	l1.titulo = "Belo dia para morrer";
	l1.numPag = 290;
	l1.Editora = "Saraivá";
}
}