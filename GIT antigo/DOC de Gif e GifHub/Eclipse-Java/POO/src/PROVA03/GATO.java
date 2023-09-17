package PROVA03;

public class GATO extends Animal /*herança, puxando tudo de animal*/ implements Mamifero { 

		private String nome; //privando e oferencendo o GET para escrita e o Set para leitura
		
		public GATO(String nome){
			this.nome = nome;
		}
		
		void miar() {
			System.out.println("miando...");
		}
		
		public String getNome( ) {
			return nome;
		}
		public void setNome(String nome) {
			this.nome = nome;		
		}

		void domir() {
			System.out.println("gato dormindo..."); //polimorfismo 
			
			
		}

		@Override
		public void mamar() {
			System.out.println("gato mamando..."); //interface
			// TODO Auto-generated method stub
			
		}
		}

