package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio4 {
	public static void main(String[] args) {
		// Sabe-se que o lat�o � constitu�do de 70% de cobre e 30% de zinco. Fa�a um
		// programa que permita ao usu�rio informar uma quantidade de lat�o em quilos e
		// forne�a o total de cobre e zinco necess�rios para fabricar essa quantidade.

		double quantLatao;
		double cobre = 0.70;
		double totalCobre;
		double zinco = 0.30;
		double totalZinco;

		quantLatao = Double.parseDouble(JOptionPane.showInputDialog(
				" Vamos converter quantidade de lat�o (KG)." + "\n A composi��o de lat�o �:" + "\n 30% Zinco;"
						+ "\n 70% Cobre." + "\n Informe quantos quilos de lat�o gostaria de converter: "));

		totalCobre = quantLatao * cobre;
		totalZinco = quantLatao * zinco;

		JOptionPane.showMessageDialog(null, "Para " + quantLatao + " Kg de lat�o, temos:"
				+ "\n " + totalZinco + " Kg de Zinco, e "
				+ "\n " + totalCobre + " Kg de Cobre.",
				"Convers�o", JOptionPane.INFORMATION_MESSAGE);

	}
}
