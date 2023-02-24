package lista2Java;

import javax.swing.JOptionPane;
import java.text.DecimalFormat;
import java.util.Random;

public class Exercicio7 {

	public static void main(String[] args) {
		DecimalFormat df = new DecimalFormat("0.00");

		/*
		 * Um estudante do ensino médio gostaria de controlar melhor suas notas nas
		 * disciplinas exatas. Ele gostaria de poder nxergar suas notas dos 4 bimestres
		 * com exatamente duas casas decimais e em formato de matriz, como no exemplo a
		 * seguir: Matemática Física Química 9.53 8.66 8.45 7.57 9.00 8.01 8.87 9.44
		 * 7.88 7.30 6.77 9.21 Além disso, o estudante gostaria de poder escolher
		 * algumas opções de visualização de acordo com o menu abaixo: Todas as notas de
		 * todas as disciplinas; Qual a maior nota e em qual disciplina foi; A média das
		 * notas de alguma disciplina (solicitar qual); As notas de um dos bimestres
		 * (solicitar qual); Encerrar. Faça um programa que permita cadastrar as notas
		 * de acordo com o exemplo (considerando a ordem das disciplinas) e forneça os
		 * dados supracitados. O menu deve ser exibido repetitivamente, até que o
		 * usuário deseje encerrar o programa.
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
					disciplina = "Matemática";
					break;
				case 1:
					disciplina = "Física";
					break;
				case 2:
					disciplina = "Química";
					break;
				}

				matriz[linha][coluna] = Double.parseDouble(JOptionPane.showInputDialog(null,
						"Informe a nota do " + (linha + 1) + "º bimestre de " + disciplina + ":"));

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
					disciplinaMaiorNota = "Matemática.";
				} else if ((maiorNotaFis > maiorNotaMat) && (maiorNotaFis > maiorNotaQui)) {
					maiorNota = maiorNotaFis;
					disciplinaMaiorNota = "Física.";
				} else if ((maiorNotaQui > maiorNotaMat) && (maiorNotaFis < maiorNotaQui)) {
					maiorNota = maiorNotaQui;
					disciplinaMaiorNota = "Química.";
				} else if ((maiorNotaQui == maiorNotaMat) && (maiorNotaFis < maiorNotaQui)) {
					maiorNota = maiorNotaQui;
					disciplinaMaiorNota = "Matemática e Química.";
				} else if ((maiorNotaQui == maiorNotaFis) && (maiorNotaMat < maiorNotaQui)) {
					maiorNota = maiorNotaQui;
					disciplinaMaiorNota = "Física e Química.";
				} else if ((maiorNotaMat == maiorNotaFis) && (maiorNotaMat > maiorNotaQui)) {
					maiorNota = maiorNotaMat;
					disciplinaMaiorNota = "Matemática e Física.";
				} else {
					maiorNota = maiorNotaMat;
					disciplinaMaiorNota = "Matemática, Física e Química.";
				}

				while ((matriz[linha][coluna] < 0) || (matriz[linha][coluna] > 10)) {
					JOptionPane.showMessageDialog(null, "A nota informada é inválida.", "Alerta!",
							JOptionPane.INFORMATION_MESSAGE);
					matriz[linha][coluna] = Double.parseDouble(JOptionPane.showInputDialog(null,
							"Informe a nota do " + (linha + 1) + "º bimestre", "Notas"));
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
						" O que você deseja realizar?" + "\n 1 - Ver a nota de todas as disciplinas;"
								+ "\n 2 - Qual a maior nota e de qual disciplina pertence;"
								+ "\n 3 - A média das notas da disciplina (selecionar no próximo passo);"
								+ "\n 4 - As notas de um bimestre específico (selecionar no próximo passo);"
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
						"A maior nota é: " + df.format(maiorNota) + ", da(s) disciplina(s): " + disciplinaMaiorNota,
						"Maior nota", JOptionPane.INFORMATION_MESSAGE);
				break;
			case 3:
				saberMedia = Integer
						.parseInt(JOptionPane.showInputDialog(null, " De qual disciplina deseja saber a média?"
								+ "\n 1 - Matemática;" + "\n 2 - Física;" + "\n 3 - Quimica;"));
				switch (saberMedia) {
				case 1:
					JOptionPane.showMessageDialog(null, "A média das notas de matemática é: " + df.format(mediaMat)
							+ ", da disciplina: Matemática!", "Maior nota", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 2:
					JOptionPane.showMessageDialog(null,
							"A média das notas de física é: " + df.format(mediaFis) + ", da disciplina: Física!",
							"Maior nota", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 3:
					JOptionPane.showMessageDialog(null,
							"A média das notas de química é: " + df.format(mediaQui) + ", da disciplina: Química!",
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
							" As notas do " + bimestre + "° bimestre, são:" + "\n Mat   Fis   Qui" + "\n"
									+ df.format(matriz[0][0]) + "   " + df.format(matriz[0][1]) + "   "
									+ df.format(matriz[0][2]),
							"Notas do bimestre", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 2:
					JOptionPane.showMessageDialog(null,
							" As notas do " + bimestre + "° bimestre, são:" + "\n Mat   Fis   Qui" + "\n"
									+ df.format(matriz[1][0]) + "   " + df.format(matriz[1][1]) + "   "
									+ df.format(matriz[1][2]),
							"Notas do bimestre", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 3:
					JOptionPane.showMessageDialog(null,
							" As notas do " + bimestre + "° bimestre, são:" + "\n Mat   Fis   Qui" + "\n"
									+ df.format(matriz[2][0]) + "   " + df.format(matriz[2][1]) + "   "
									+ df.format(matriz[2][2]),
							"Notas do bimestre", JOptionPane.INFORMATION_MESSAGE);
					break;
				case 4:
					JOptionPane.showMessageDialog(null,
							" As notas do " + bimestre + "° bimestre, são:" + "\n Mat   Fis   Qui" + "\n"
									+ df.format(matriz[3][0]) + "   " + df.format(matriz[3][1]) + "   "
									+ df.format(matriz[3][2]),
							"Notas do bimestre", JOptionPane.INFORMATION_MESSAGE);
					break;
				}
			}
		} while (opcao != 5);
	}
}