package controle;

public class Principal {

	// Entrou em desuso, quando invocamos as operações individualmente
	// private static Operacoes oper = new Operacoes();

	public static void main(String[] args) {
		Controladora controladora = new Controladora();
		controladora.exibeMenu();
	}

}
