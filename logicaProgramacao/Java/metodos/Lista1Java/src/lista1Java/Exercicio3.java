package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio3 {
	public static void main(String[] args) {
		// Fa�a um programa que pe�a ao usu�rio para informar 03 n�meros e
		// mostre o menor entre eles. Considere que o usu�rio n�o poder� informar
		// n�meros iguais.
		int primeiroValor;
		int segundoValor;
		int terceiroValor;

		primeiroValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o primeiro n�mero: "));
		// aqui imponho que se o n�mero j� foi informado anteriormente, eu o devo
		// informar de novo
		do {
			segundoValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o segundo n�mero: "));
		} while (segundoValor == primeiroValor);
		// aqui imponho que se o n�mero j� foi informado anteriormente, eu o devo
		// informar de novo
		do {
			terceiroValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o terceiro n�mero: "));
		} while ((terceiroValor == primeiroValor) || (terceiroValor == segundoValor));
		if ((primeiroValor < segundoValor) && (primeiroValor < terceiroValor)) {
			JOptionPane.showMessageDialog(null, "O menor valor �: " + primeiroValor, "Menor n�mero",
					JOptionPane.WARNING_MESSAGE);
		} else if ((segundoValor < primeiroValor) || (segundoValor < terceiroValor)) {
			JOptionPane.showMessageDialog(null, "O menor valor �: " + segundoValor, "Menor n�mero",
					JOptionPane.WARNING_MESSAGE);
		} else {
			JOptionPane.showMessageDialog(null, "O menor valor �: " + terceiroValor, "Menor n�mero",
					JOptionPane.WARNING_MESSAGE);
		}
	}
}