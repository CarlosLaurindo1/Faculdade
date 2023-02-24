package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio2 {

	public static void main(String[] args) {
		// Escreva um programa que receba quatro notas do aluno e as insira em um vetor.
		// Depois, calcule a média aritmética entre as quatro notas e mostre o
		// "conceito" do
		// aluno conforme as instruções:

		// 9.0 ou maior = Conceito A
		// entre 8.0 e 8.9 = Conceito B
		// entre 7.0 e 7.9 = Conceito C
		// menor que 7.0 = Conceito D

		String nomeAluno;
		double somaNotas = 0;
		double mediaNotas = 0;
		char conceito;
		double[] notas = new double[4];

		nomeAluno = JOptionPane.showInputDialog("Informe o nome do aluno: ");

		for (int i = 0; i < 4; i++) {
			do {
				notas[i] = Double
						.parseDouble(JOptionPane.showInputDialog("Informe a " + (i + 1) + "ª nota do " + nomeAluno));
			} while ((notas[i] < 0) || (notas[i] > 10));
			somaNotas = somaNotas + notas[i];
		}

		mediaNotas = somaNotas / 4;
		if ((mediaNotas >= 9) && (mediaNotas <= 10)) {
			conceito = 'A';
		} else if ((mediaNotas >= 8) && (mediaNotas < 9)) {
			conceito = 'B';
		} else if ((mediaNotas >= 8) && (mediaNotas < 7)) {
			conceito = 'C';
		} else {
			conceito = 'D';
		}

		JOptionPane.showMessageDialog(null,
				" O aluno: " + nomeAluno + " atingiu a média : " + mediaNotas + ". Aluno nota: " + conceito,
				"Conceito do Aluno", JOptionPane.INFORMATION_MESSAGE);

	}

}
