package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio6 {

	public static void main(String[] args) {
		// Crie uma calculadora que permita o cálculo de uma equação, sem limite de
		// execuções definido, da seguinte maneira:
		// 1. Peça o primeiro valor ,
		// 2. Peça o cálculo que deseja fazer (entre as 4 operações básicas),
		// 3. Peça um segundo valor
		// 4. Efetue o cálculo,
		// 5. Peça se o usuário quer continuar calculando. Se ele responder que sim,
		// volte para o passo 2
		// usando o resultado do cálculo da linha 4 como primeiro valor, e se disser que
		// não, mostre o resultado final .
		// Exemplo de uso para o algoritmo: 4 + 3 = 7 x 4 = 28 / 14 = 2.

		int primeiroValor;
		String repetir;
		String operador;
		int segundoValor;
		int resultado = 0;

		primeiroValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o 1º valor:"));

		// início da estrutura de repetição para o menu
		do {

			// Solicitando opção do menu
			operador = JOptionPane.showInputDialog("Qual o tipo de operação que você deseja fazer?" + "\n Subtração (-)"
					+ "\n Adição (+)" + "\n Divisão (/)" + "\n Multiplicação (*)");

			segundoValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o 2º valor:"));

			// programação do menu
			switch (operador) {
			case "-": {
				resultado = (primeiroValor - segundoValor);
				break;
			}
			case "+": {
				resultado = (primeiroValor + segundoValor);
				break;
			}
			case "/":
				while (segundoValor == 0) {
					segundoValor = Integer.parseInt(JOptionPane
							.showInputDialog("Não é possível dividir um número por zero" + "\n Informe 2º valor:"));
				}
				resultado = (primeiroValor / segundoValor);
				break;
			case "*":
				resultado = (primeiroValor * segundoValor);
				break;
			}

			repetir = JOptionPane.showInputDialog(
					"Deseja calcular novamente?" + "\n Digite S para sim ou outro caractere para encerrar:");
			primeiroValor = resultado;
		} while (repetir.equalsIgnoreCase("S"));
		JOptionPane.showMessageDialog(null, "O resultado da operação foi: " + resultado, "RESULTADO",
				JOptionPane.INFORMATION_MESSAGE);
	}
}
