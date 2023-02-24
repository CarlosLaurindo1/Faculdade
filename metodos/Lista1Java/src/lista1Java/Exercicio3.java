package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio3 {
	public static void main(String[] args) {
		// Faça um programa que peça ao usuário para informar 03 números e
		// mostre o menor entre eles. Considere que o usuário não poderá informar
		// números iguais.
		int primeiroValor;
		int segundoValor;
		int terceiroValor;

		primeiroValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o primeiro número: "));
		// aqui imponho que se o número já foi informado anteriormente, eu o devo
		// informar de novo
		do {
			segundoValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o segundo número: "));
		} while (segundoValor == primeiroValor);
		// aqui imponho que se o número já foi informado anteriormente, eu o devo
		// informar de novo
		do {
			terceiroValor = Integer.parseInt(JOptionPane.showInputDialog("Informe o terceiro número: "));
		} while ((terceiroValor == primeiroValor) || (terceiroValor == segundoValor));
		if ((primeiroValor < segundoValor) && (primeiroValor < terceiroValor)) {
			JOptionPane.showMessageDialog(null, "O menor valor é: " + primeiroValor, "Menor número",
					JOptionPane.WARNING_MESSAGE);
		} else if ((segundoValor < primeiroValor) || (segundoValor < terceiroValor)) {
			JOptionPane.showMessageDialog(null, "O menor valor é: " + segundoValor, "Menor número",
					JOptionPane.WARNING_MESSAGE);
		} else {
			JOptionPane.showMessageDialog(null, "O menor valor é: " + terceiroValor, "Menor número",
					JOptionPane.WARNING_MESSAGE);
		}
	}
}