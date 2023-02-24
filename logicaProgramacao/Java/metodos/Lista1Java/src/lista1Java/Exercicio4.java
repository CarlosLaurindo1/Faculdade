package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio4 {
	// Fa�a um algoritmo que mostre a soma de todos os valores pares entre o
	// intervalo de dois n�meros digitados pelo usu�rio.
	public static void main(String[] args) {

		int primeiroValor;
		int segundoValor;
		int soma = 0;
		int qtdVetor = 0;
		int terceiroValor;

		primeiroValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o primeiro n�mero: "));
		segundoValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o segundo n�mero: "));
		if (segundoValor < primeiroValor) {
			terceiroValor = segundoValor;
			segundoValor = primeiroValor;
			primeiroValor = terceiroValor;
		}

		// criando todos os n�meros da opera��o. Adicionamos o calculo para identificar
		// a quantidade de numeros
		qtdVetor = segundoValor - primeiroValor + 1;
		int[] valores = new int[qtdVetor];
		// Usar o menor ao inv�s de menor ou igual
		for (int i = 0; i < qtdVetor; i++) {
			// setando valores de i igual ao numero sequencial informado
			// Para que o valor inicial seja setar no primeiro item do vetor, basta ent�o,
			// somar ao i conforme abaixo
			valores[i] = (primeiroValor + i);
			if (valores[i] % 2 == 0) {
				soma = soma + (valores[i]);
			}
		}
		JOptionPane.showMessageDialog(null, "A soma total dos pares �: " + soma, "Soma dos pares",
				JOptionPane.INFORMATION_MESSAGE);

	}
}
