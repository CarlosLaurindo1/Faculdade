import java.text.DecimalFormat;

import javax.swing.JOptionPane;

public class LMExercicio2 {

	public static void main(String[] args) {

		/*
		 * Faça um programa que receba as três notas de um aluno e pergunte ao professor
		 * qual média ele deseja calcular: aritmética ou ponderada. Se for a média
		 * ponderada, os pesos de cada nota devem ser informados. Cada média deverá ser
		 * calculada por um método; Os dois métodos devem receber como parâmetros as
		 * notas; No caso do método da média ponderada, além das notas, o método deverá
		 * receber também os pesos, que devem ser previamente solicitados ao usuário; Os
		 * dois métodos devem retornar a média; Um método deve ser criado para receber a
		 * média final e mostrar se o aluno está aprovado ou reprovado, considerando que
		 * a média mínima para aprovação é 7.
		 */

		double[] seqNota = new double[3];
		int[] pesoNota = new int[3];
		int totalPesoNota = 0;
		int linha = 0;
		int tipoMedia;
		double media;

		for (linha = 0; linha < 3; linha++) {
			seqNota[linha] = Double
					.parseDouble(JOptionPane.showInputDialog(null, "Informe a " + (linha + 1) + "ª nota do aluno: "));
			while ((seqNota[linha] < 0) || (seqNota[linha] > 10)) {
				seqNota[linha] = Double.parseDouble(
						JOptionPane.showInputDialog(null, "Informe a " + (linha + 1) + "ª nota do aluno: "));
			}
		}

		tipoMedia = Integer.parseInt(JOptionPane.showInputDialog(null, "Qual o tipo de média que deseja consultar?"
				+ "\n 1 - Média atitmética;" + "\n 2 - Média ponderada." + "\n 3 - Sair"));

		switch (tipoMedia) {
		case 1:
			media = calcularMediaAritmetica(seqNota);
			apresentarValorMedia(media);
			break;
		case 2:
			for (linha = 0; linha < 3; linha++) {
				pesoNota[linha] = Integer
						.parseInt(JOptionPane.showInputDialog(null, "Informe o peso da " + (linha + 1) + "ª nota: "));
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
		JOptionPane.showMessageDialog(null, "Você reprovou! A média das notas é de: " + df.format(media));
		} else {
			JOptionPane.showMessageDialog(null, "Você foi aprovado! A média das notas é de: " + df.format(media));
		}
	}

}
