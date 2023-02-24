package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio1 {

	public static void main(String[] args) {
		// Faça um programa que receba um vetor de valores e mostre a quantidade de
		// valores negativos.
		// Os valores e o tamanho do vetor devem ser informados pelo usuário.
		
		int tamanhoDoVetor;
		int totalNumerosNegativos = 0;

		tamanhoDoVetor = Integer
				.parseInt(JOptionPane.showInputDialog(" Vou identificar quantos valores negativos você informou!"
						+ "\n Quantos números você deseja informar?"));

		int[] valores = new int[tamanhoDoVetor];
		// receber e guardar os números
		for (int i = 0; i < tamanhoDoVetor; i++) {
			// valores[i] > 0;
			valores[i] = Integer.parseInt(JOptionPane.showInputDialog("Informe o " + (i + 1) + "º valor:"));
			if (valores[i] < 0) {
				totalNumerosNegativos = totalNumerosNegativos + 1;
			}
		}
		
		JOptionPane.showMessageDialog(null, "Entre os números informados, "+ totalNumerosNegativos + " são negativos.", "Último valor", JOptionPane.INFORMATION_MESSAGE);

	}

}
