//Transformamos esta classe como uma extensão das operações
public class Soma extends Operacoes {

	// Como usamos essa classe como uma extensão, as informações contidas na classe
	// operações, está com os getters e setters devidamente construídos
	public double calculo() {
		double soma = num1 + num2;
		return soma;
	}
}
