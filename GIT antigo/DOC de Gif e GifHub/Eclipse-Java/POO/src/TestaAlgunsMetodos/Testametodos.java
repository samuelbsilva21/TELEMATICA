package TestaAlgunsMetodos;

class Testametodos {
	public static void main(String[] args) {
		// criando a conta
		Conta minhaConta;
		minhaConta = new Conta();
		// alterando os valores de minhaConta
		minhaConta.titular = "Duke";
		minhaConta.saldo = 1000;
		// saca 200 reais
		minhaConta.saca(200);
		// deposita 500 reais
		minhaConta.deposita(500);
		System.out.println(minhaConta.saldo);
	}
}

class Main {
public static void main(String[] args) {
// criando a conta
Conta minhaConta;
minhaConta = new Conta();
// alterando os valores de minhaConta
minhaConta.titular = "Duke";
minhaConta.saldo = 1000;
// saca 200 reais
minhaConta.saca(200);

// deposita 500 reais
minhaConta.deposita(500);
System.out.println(minhaConta.saldo);
}
}

class Conta {
	int numero;
	String titular;
	double saldo;

	void saca(double quantidade) {
		double novoSaldo = this.saldo - quantidade;
		this.saldo = novoSaldo;
	}

	void deposita(double quantidade) {
		this.saldo += quantidade;
	}
}