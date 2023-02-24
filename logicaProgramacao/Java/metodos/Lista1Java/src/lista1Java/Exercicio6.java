package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio6 {

	public static void main(String[] args) {
		// Crie uma calculadora que permita o c�lculo de uma equa��o, sem limite de
		// execu��es definido, da seguinte maneira:
		// 1. Pe�a o primeiro valor ,
		// 2. Pe�a o c�lculo que deseja fazer (entre as 4 opera��es b�sicas),
		// 3. Pe�a um segundo valor
		// 4. Efetue o c�lculo,
		// 5. Pe�a se o usu�rio quer continuar calculando. Se ele responder que sim,
		// volte para o passo 2
		// usando o resultado do c�lculo da linha 4 como primeiro valor, e se disser que
		// n�o, mostre o resultado final .
		// Exemplo de uso para o algoritmo: 4 + 3 = 7 x 4 = 28 / 14 = 2.

		int primeiroValor;
		String repetir;
		String operador;
		int segundoValor;
		int resultado = 0;

		primeiroValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o 1� valor:"));

		// in�cio da estrutura de repeti��o para o menu
		do {

			// Solicitando op��o do menu
			operador = JOptionPane.showInputDialog("Qual o tipo de opera��o que voc� deseja fazer?" + "\n Subtra��o (-)"
					+ "\n Adi��o (+)" + "\n Divis�o (/)" + "\n Multiplica��o (*)");

			segundoValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o 2� valor:"));

			// programa��o do menu
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
							.showInputDialog("N�o � poss�vel dividir um n�mero por zero" + "\n Informe 2� valor:"));
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
		JOptionPane.showMessageDialog(null, "O resultado da opera��o foi: " + resultado, "RESULTADO",
				JOptionPane.INFORMATION_MESSAGE);
	}
}
