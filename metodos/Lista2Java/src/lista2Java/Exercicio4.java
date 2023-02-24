package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio4 {
	public static void main(String[] args) {
		// Sabe-se que o latão é constituído de 70% de cobre e 30% de zinco. Faça um
		// programa que permita ao usuário informar uma quantidade de latão em quilos e
		// forneça o total de cobre e zinco necessários para fabricar essa quantidade.

		double quantLatao;
		double cobre = 0.70;
		double totalCobre;
		double zinco = 0.30;
		double totalZinco;

		quantLatao = Double.parseDouble(JOptionPane.showInputDialog(
				" Vamos converter quantidade de latão (KG)." + "\n A composição de latão é:" + "\n 30% Zinco;"
						+ "\n 70% Cobre." + "\n Informe quantos quilos de latão gostaria de converter: "));

		totalCobre = quantLatao * cobre;
		totalZinco = quantLatao * zinco;

		JOptionPane.showMessageDialog(null, "Para " + quantLatao + " Kg de latão, temos:"
				+ "\n " + totalZinco + " Kg de Zinco, e "
				+ "\n " + totalCobre + " Kg de Cobre.",
				"Conversão", JOptionPane.INFORMATION_MESSAGE);

	}
}
