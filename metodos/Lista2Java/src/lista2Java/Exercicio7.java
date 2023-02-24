package lista2Java;

import javax.swing.JOptionPane;
import java.text.DecimalFormat;
import java.util.Random;

public class Exercicio7 {

	public static void main(String[] args) {
		DecimalFormat df = new DecimalFormat("0.00");

		/*
		 * Um estudante do ensino m�dio gostaria de controlar melhor suas notas nas
		 * disciplinas exatas. Ele gostaria de poder nxergar suas notas dos 4 bimestres
		 * com exatamente duas casas decimais e em formato de matriz, como no exemplo a
		 * seguir: Matem�tica F�sica Qu�mica 9.53 8.66 8.45 7.57 9.00 8.01 8.87 9.44
		 * 7.88 7.30 6.77 9.21 Al�m disso, o estudante gostaria de poder escolher
		 * algumas op��es de visualiza��o de acordo com o menu abaixo: Todas as notas de
		 * todas as disciplinas; Qual a maior nota e em qual disciplina foi; A m�dia das
		 * notas de alguma disciplina (solicitar qual); As notas de um dos bimestres
		 * (solicitar qual); Encerrar. Fa�a um programa que permita cadastrar as notas
		 * de acordo com o exemplo (considerando a ordem das disciplinas) e forne�a os
		 * dados supracitados. O menu deve ser exibido repetitivamente, at� que o
		 * usu�rio deseje encerrar o programa.
		 */

		double[][] matriz = new double[4][3];
		int linha = 0;
		int coluna = 0;
		int opcao = 0, bimestre, saberMedia;
		double maiorNotaMat = 0, maiorNotaFis = 0, maiorNotaQui = 0, maiorNota = 0;
		double somaMat = 0, somaFis = 0, somaQui = 0;
		double mediaMat = 0, mediaFis = 0, mediaQui = 0;
		String boletim = null;
		String disciplina = null;
		String disciplinaMaiorNota = null;
		String mensagem;

		for (linha = 0; linha < 4; linha++) {
			for (coluna = 0; coluna < 3; coluna++) {
				switch (coluna) {
				case 0:
					disciplina = "Matem�tica";
					break;
				case 1:
					disciplina = "F�sica";
					break;
				case 2:
					disciplina = "Qu�mica";
					break;
				}

				matriz[linha][coluna] = Double.parseDouble(JOptionPane.showInputDialog(null,
						"Informe a nota do " + (linha + 1) + "� bimestre de " + disciplina + ":"));

				if (matriz[linha][0] > maiorNotaMat) {
					maiorNotaMat = matriz[linha][0];
				}
				if (matriz[linha][1] > maiorNotaFis) {
					maiorNotaFis = matriz[linha][1];
				}
				if (matriz[linha][2] > maiorNotaQui) {
					maiorNotaQui = matriz[linha][2];
				}
				if ((maiorNotaMat > maiorNotaFis) && (maiorNotaMat > maiorNotaQui)) {
					maiorNota = maiorNotaMat;
					disciplinaMaiorNota = "Matem�tica.";
				} else if ((maiorNotaFis > maiorNotaMat) && (maiorNotaFis > maiorNotaQui)) {
					maiorNota = maiorNotaFis;
					disciplinaMaiorNota = "F�sica.";
				} else if ((maiorNotaQui > maiorNotaMat) && (maiorNotaFis < maiorNotaQui)) {
					maiorNota = maiorNotaQui;
					disciplinaMaiorNota = "Qu�mica.";
				} else if ((maiorNotaQui == maiorNotaMat) && (maiorNotaFis < maiorNotaQui)) {
					maiorNota = maiorNotaQui;
					disciplinaMaiorNota = "Matem�tica e Qu�mica.";
				} else if ((maiorNotaQui == maiorNotaFis) && (maiorNotaMat < maiorNotaQui)) {
					maiorNota = maiorNotaQui;
					disciplinaMaiorNota = "F�sica e Qu�mica.";
				} else if ((maiorNotaMat == maiorNotaFis) && (maiorNotaMat > maiorNotaQui)) {
					maiorNota = maiorNotaMat;
					disciplinaMaiorNota = "Matem�tica e F�sica.";
				} else {
					maiorNota = maiorNotaMat;
					disciplinaMaiorNota = "Matem�tica, F�sica e Qu�mica.";
				}

				while ((matriz[linha][coluna] < 0) || (matriz[linha][coluna] > 10)) {
					JOptionPane.showMessageDialog(null, "A nota informada � inv�lida.", "Alerta!",
							JOptionPane.INFORMATION_MESSAGE);
					matriz[linha][coluna] = Double.parseDouble(JOptionPane.showInputDialog(null,
							"Informe a nota do " + (linha + 1) + "� bimestre", "Notas"));
				}

				switch (coluna) {
				case 0:
					somaMat = somaMat + matriz[linha][coluna];
					break;
				case 1:
					somaFis = somaFis + matriz[linha][coluna];
					break;
				case 2:
					somaQui = somaQui + matriz[linha][coluna];
					break;
				}
			}
		}
		mediaMat = somaMat / 4;
		mediaFis = somaFis / 4;
		mediaQui = somaQui / 4;
		do {
			opcao = 0;
			while ((opcao < 1) || (opcao > 5)) {
				opcao = Integer.parseInt(JOptionPane.showInputDialog(null,
						" O que voc� deseja realizar?" + "\n 1 - Ver a nota de todas as disciplinas;"
								+ "\n 2 - Qual a maior nota e de qual disciplina pertence;"
								+ "\n 3 - A m�dia das notas da disciplina (selecionar no pr�ximo passo);"
								+ "\n 4 - As notas de um bimestre espec�fico (selecionar no pr�ximo passo);"
								+ "\n 5 - Encerrar."));
			}
			switch (opcao) {
			case 1:
				boletim = "Mat   Fis   Qui \n";
				for (linha = 0; linha < 4; linha++) {
					for (coluna = 0; coluna < 3; coluna++) {
						boletim += df.format(matriz[linha][coluna]) + "   ";
					}
					boletim += "\n";
				}

				JOptionPane.showMessageDialog(null, "" + "  " + boletim + "  ", "Boletim",
						JOptionPane.INFORMATION_MESSAGE);
				break;
			case 2:
				JOptionPane.showMessageDialog(null,
						"A maior nota �: " + df.format(maiorNota) + ", da(s) disciplina(s): " + disciplinaMaiorNota,
						"Maior nota", JOptionPane.INFORMATION_MESSAGE);
				break;
			case 3:
				saberMedia = Integer
						.parseInt(JOptionPane.showInputDialog(null, " De qual disciplina deseja saber a m�dia?"
								+ "\n 1 - Matem�tica;" + "\n 2 - F�sica;" + "\n 3 - Quimica;"));
				switch (saberMedia) {
				case 1:
					JOptionPane.showMessageDialog(null, "A m�dia das notas de matem�tica �: " + df.format(mediaMat)
							+ ", da disciplina: Matem�tica!", "Maior nota", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 2:
					JOptionPane.showMessageDialog(null,
							"A m�dia das notas de f�sica �: " + df.format(mediaFis) + ", da disciplina: F�sica!",
							"Maior nota", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 3:
					JOptionPane.showMessageDialog(null,
							"A m�dia das notas de qu�mica �: " + df.format(mediaQui) + ", da disciplina: Qu�mica!",
							"Maior nota", JOptionPane.INFORMATION_MESSAGE);
					break;
				}
				break;
			case 4:
				bimestre = Integer.parseInt(
						JOptionPane.showInputDialog(null, "Informe o bimestre que deseja consultar as notas"));
				switch (bimestre) {
				case 1:
					JOptionPane.showMessageDialog(null,
							" As notas do " + bimestre + "� bimestre, s�o:" + "\n Mat   Fis   Qui" + "\n"
									+ df.format(matriz[0][0]) + "   " + df.format(matriz[0][1]) + "   "
									+ df.format(matriz[0][2]),
							"Notas do bimestre", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 2:
					JOptionPane.showMessageDialog(null,
							" As notas do " + bimestre + "� bimestre, s�o:" + "\n Mat   Fis   Qui" + "\n"
									+ df.format(matriz[1][0]) + "   " + df.format(matriz[1][1]) + "   "
									+ df.format(matriz[1][2]),
							"Notas do bimestre", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 3:
					JOptionPane.showMessageDialog(null,
							" As notas do " + bimestre + "� bimestre, s�o:" + "\n Mat   Fis   Qui" + "\n"
									+ df.format(matriz[2][0]) + "   " + df.format(matriz[2][1]) + "   "
									+ df.format(matriz[2][2]),
							"Notas do bimestre", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 4:
					JOptionPane.showMessageDialog(null,
							" As notas do " + bimestre + "� bimestre, s�o:" + "\n Mat   Fis   Qui" + "\n"
									+ df.format(matriz[3][0]) + "   " + df.format(matriz[3][1]) + "   "
									+ df.format(matriz[3][2]),
							"Notas do bimestre", JOptionPane.INFORMATION_MESSAGE);
					break;
				}
			}
		} while (opcao != 5);
	}
}