//Transformamos esta classe como uma extens�o das opera��es
public class Soma extends Operacoes {

	// Como usamos essa classe como uma extens�o, as informa��es contidas na classe
	// opera��es, est� com os getters e setters devidamente constru�dos
	public double calculo() {
		double soma = num1 + num2;
		return soma;
	}
}
