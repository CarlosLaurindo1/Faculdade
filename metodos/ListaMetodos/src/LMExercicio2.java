import java.text.DecimalFormat;

import javax.swing.JOptionPane;

public class LMExercicio2 {

	public static void main(String[] args) {

		/*
		 * Fa�a um programa que receba as tr�s notas de um aluno e pergunte ao professor
		 * qual m�dia ele deseja calcular: aritm�tica ou ponderada. Se for a m�dia
		 * ponderada, os pesos de cada nota devem ser informados. Cada m�dia dever� ser
		 * calculada por um m�todo; Os dois m�todos devem receber como par�metros as
		 * notas; No caso do m�todo da m�dia ponderada, al�m das notas, o m�todo dever�
		 * receber tamb�m os pesos, que devem ser previamente solicitados ao usu�rio; Os
		 * dois m�todos devem retornar a m�dia; Um m�todo deve ser criado para receber a
		 * m�dia final e mostrar se o aluno est� aprovado ou reprovado, considerando que
		 * a m�dia m�nima para aprova��o � 7.
		 */

		double[] seqNota = new double[3];
		int[] pesoNota = new int[3];
		int totalPesoNota = 0;
		int linha = 0;
		int tipoMedia;
		double media;

		for (linha = 0; linha < 3; linha++) {
			seqNota[linha] = Double
					.parseDouble(JOptionPane.showInputDialog(null, "Informe a " + (linha + 1) + "� nota do aluno: "));
			while ((seqNota[linha] < 0) || (seqNota[linha] > 10)) {
				seqNota[linha] = Double.parseDouble(
						JOptionPane.showInputDialog(null, "Informe a " + (linha + 1) + "� nota do aluno: "));
			}
		}

		tipoMedia = Integer.parseInt(JOptionPane.showInputDialog(null, "Qual o tipo de m�dia que deseja consultar?"
				+ "\n 1 - M�dia atitm�tica;" + "\n 2 - M�dia ponderada." + "\n 3 - Sair"));

		switch (tipoMedia) {
		case 1:
			media = calcularMediaAritmetica(seqNota);
			apresentarValorMedia(media);
			break;
		case 2:
			for (linha = 0; linha < 3; linha++) {
				pesoNota[linha] = Integer
						.parseInt(JOptionPane.showInputDialog(null, "Informe o peso da " + (linha + 1) + "� nota: "));
				totalPesoNota = totalPesoNota + pesoNota[linha];
			}
			media = calcularMediaPondera(seqNota, pesoNota);
			apresentarValorMedia(media);
			break;
		case 3:
			System.exit(0);
			break;
		}

	}

	public static double calcularMediaAritmetica(double seqNota[]) {
		double mediaCalculada;
		double somaNotas;
		
		somaNotas = seqNota[0] + seqNota[1] + seqNota[2];
		mediaCalculada = (somaNotas / 3);
		
		return mediaCalculada;
	}

	public static double calcularMediaPondera(double seqNota[], int pesoNota[]) {
		double[] mediaPondIndividual = new double[3];
		double somaNotas = 0;
		double mediaPondValor;
		int linha;
		int totalPesoNota;
		
		totalPesoNota = pesoNota[0] + pesoNota[1] + pesoNota[2];
		
		for (linha = 0; linha < 3; linha++) {
			mediaPondIndividual[linha] = (seqNota[linha] * pesoNota[linha]);
			somaNotas = somaNotas + mediaPondIndividual[linha];
		}
		mediaPondValor = (somaNotas / totalPesoNota);
		return mediaPondValor;
	}
	
	public static void apresentarValorMedia(double media) {
		DecimalFormat df = new DecimalFormat("0.00");
		
		if (media < 6) {
		JOptionPane.showMessageDialog(null, "Voc� reprovou! A m�dia das notas � de: " + df.format(media));
		} else {
			JOptionPane.showMessageDialog(null, "Voc� foi aprovado! A m�dia das notas � de: " + df.format(media));
		}
	}

}
