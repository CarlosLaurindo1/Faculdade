package desafioFinalJava;

import javax.swing.JOptionPane;

public class jogoDaVelha {

	public static void main(String[] args) {
		int jogadorDaVez;
		int quantidadeJogadas = 0;
		String jogador1 = null;
		String jogador2;
		String preenchePosicao = null;
		int posicao;
		boolean posicaoDaVez;
		String[][] tabuleiro = new String[3][3];
		boolean vencedor = false;

		tabuleiro[0][0] = "1";
		tabuleiro[0][1] = "2";
		tabuleiro[0][2] = "3";
		tabuleiro[1][0] = "4";
		tabuleiro[1][1] = "5";
		tabuleiro[1][2] = "6";
		tabuleiro[2][0] = "7";
		tabuleiro[2][1] = "8";
		tabuleiro[2][2] = "9";

		JOptionPane.showMessageDialog(null,
				"Vamos começar o Jogo! Cada jogador terá um símbolo e "
						+ "\ndeverá escolher uma posição em tela. Vencerá aquele que,"
						+ "\n preencher primeiro uma linha, ou coluna ou diagonal com" + "\nseu símbolo.",
				"Boas vindas.", JOptionPane.INFORMATION_MESSAGE);

		jogador1 = definirSimboloJogador();
		if (jogador1.equalsIgnoreCase("X")) {
			jogador1 = "X";
			jogador2 = "O";
		} else {
			jogador1 = "O";
			jogador2 = "X";
		}
		JOptionPane.showMessageDialog(null,
				"Jogador 1, seu símbolo é: " + jogador1 + "\nJogador 2, seu símbolo é: " + jogador2, "Jogadores",
				JOptionPane.INFORMATION_MESSAGE);

		do {
			quantidadeJogadas = quantidadeJogadas + 1;
			if (quantidadeJogadas % 2 == 1) {
				preenchePosicao = jogador1;
			} else {
				preenchePosicao = jogador2;
			}

			do {
				posicao = solicitarPosicaoTabuleiro(tabuleiro, quantidadeJogadas, preenchePosicao, vencedor);
				posicaoDaVez = imprimirPosicao(tabuleiro, posicao);

				if (posicaoDaVez == true) {
					JOptionPane
							.showMessageDialog(null,
									apresentarTabuleiro(tabuleiro) + "\nA posição informada, já foi preenchida."
											+ "\nEscolha outra posição no tabuleiro:",
									"Aviso", JOptionPane.PLAIN_MESSAGE);
				}

			} while (posicaoDaVez == true);

			tabuleiro = ajustarValorTabuleiro(tabuleiro, posicao, preenchePosicao);
			vencedor = calcularVencedor(tabuleiro);

		} while (!(quantidadeJogadas == 9) && (!vencedor));
		apresentarVencedor(preenchePosicao, quantidadeJogadas, tabuleiro, vencedor);

	}

	public static String definirSimboloJogador() {
		String jogador1 = null;

		jogador1 = JOptionPane.showInputDialog(null, "Jogador 1, escolha o seu símbolo (X ou O):");
		while ((!jogador1.equalsIgnoreCase("X")) && (!jogador1.equalsIgnoreCase("O"))) {
			jogador1 = JOptionPane.showInputDialog(null,
					"Opção inválida" + "\n Jogador 1, escolha o seu símbolo (X ou O):");
		}

		return jogador1;
	}

	public static int solicitarPosicaoTabuleiro(String tabuleiro[][], int quantidadeJogadas, String preenchePosicao,
			boolean vencedor) {
		int posicao = 0;

		do {
			posicao = Integer
					.parseInt(JOptionPane.showInputDialog(null,
							apresentarTabuleiro(tabuleiro) + "\nÉ a vez do " + preenchePosicao + ""
									+ "\nEscolha uma posição e jogue:",
							"Escolha de Posição", JOptionPane.PLAIN_MESSAGE));
			while ((posicao <= 0) || (posicao >= 10)) {
				posicao = Integer.parseInt(JOptionPane.showInputDialog(null,
						apresentarTabuleiro(tabuleiro) + "\nPosição informada é inválida " + preenchePosicao + ""
								+ "\nEscolha uma posição ainda não preenchida entre 1 a 9:",
						"Escolha de Posição", JOptionPane.PLAIN_MESSAGE));
			}
		} while (!(posicao >= 1) && !(posicao <= 9));

		return posicao;

	}

	public static boolean imprimirPosicao(String tabuleiro[][], int posicao) {
		boolean posicaoDaVez;

		posicaoDaVez = false;

		if (posicao == 1) {
			if (tabuleiro[0][0].equals("X") || tabuleiro[0][0].equals("O")) {
				posicaoDaVez = true;
			}
		} else if (posicao == 2) {
			if (tabuleiro[0][1].equals("X") || tabuleiro[0][1].equals("O")) {
				posicaoDaVez = true;
			}
		} else if (posicao == 3) {
			if (tabuleiro[0][2].equals("X") || tabuleiro[0][2].equals("O")) {
				posicaoDaVez = true;
			}
		} else if (posicao == 4) {
			if (tabuleiro[1][0].equals("X") || tabuleiro[1][0].equals("O")) {
				posicaoDaVez = true;
			}
		} else if (posicao == 5) {
			if (tabuleiro[1][1].equals("X") || tabuleiro[1][1].equals("O")) {
				posicaoDaVez = true;
			}
		} else if (posicao == 6) {
			if (tabuleiro[1][2].equals("X") || tabuleiro[1][2].equals("O")) {
				posicaoDaVez = true;
			}
		} else if (posicao == 7) {
			if (tabuleiro[2][0].equals("X") || tabuleiro[2][0].equals("O")) {
				posicaoDaVez = true;
			}
		} else if (posicao == 8) {
			if (tabuleiro[2][1].equals("X") || tabuleiro[2][1].equals("O")) {
				posicaoDaVez = true;
			}
		} else if (posicao == 9) {
			if (tabuleiro[2][2].equals("X") || tabuleiro[2][2].equals("O")) {
				posicaoDaVez = true;
			}
		}
		return posicaoDaVez;
	}

	public static String apresentarTabuleiro(String tabuleiro[][]) {

		String tabuleiroValor = "| " + tabuleiro[0][0] + " | " + tabuleiro[0][1] + " | " + tabuleiro[0][2] + " | "
				+ "\n| " + tabuleiro[1][0] + " | " + tabuleiro[1][1] + " | " + tabuleiro[1][2] + " | " + "\n| "
				+ tabuleiro[2][0] + " | " + tabuleiro[2][1] + " | " + tabuleiro[2][2] + " | ";

		return tabuleiroValor;

	}

	public static String[][] ajustarValorTabuleiro(String tabuleiro[][], int posicao, String preenchePosicao) {

		switch (posicao) {
		case 1:
			tabuleiro[0][0] = preenchePosicao;
			break;
		case 2:
			tabuleiro[0][1] = preenchePosicao;
			break;
		case 3:
			tabuleiro[0][2] = preenchePosicao;
			break;
		case 4:
			tabuleiro[1][0] = preenchePosicao;
			break;
		case 5:
			tabuleiro[1][1] = preenchePosicao;
			break;
		case 6:
			tabuleiro[1][2] = preenchePosicao;
			break;
		case 7:
			tabuleiro[2][0] = preenchePosicao;
			break;
		case 8:
			tabuleiro[2][1] = preenchePosicao;
			break;
		case 9:
			tabuleiro[2][2] = preenchePosicao;
		}
		return tabuleiro;
	}

	public static boolean calcularVencedor(String tabuleiro[][]) {
		boolean vencedor = false;

		if ((tabuleiro[0][0].equals(tabuleiro[0][1])) && (tabuleiro[0][1].equals(tabuleiro[0][2]))) {
			vencedor = true;
		} else if ((tabuleiro[1][0].equals(tabuleiro[1][1])) && (tabuleiro[1][1].equals(tabuleiro[1][2]))) {
			vencedor = true;
		} else if ((tabuleiro[2][0].equals(tabuleiro[2][1])) && (tabuleiro[2][1].equals(tabuleiro[2][2]))) {
			vencedor = true;
		} else if ((tabuleiro[0][0].equals(tabuleiro[1][0])) && (tabuleiro[1][0].equals(tabuleiro[2][0]))) {
			vencedor = true;
		} else if ((tabuleiro[0][1].equals(tabuleiro[1][1])) && (tabuleiro[1][1].equals(tabuleiro[2][1]))) {
			vencedor = true;
		} else if ((tabuleiro[0][2].equals(tabuleiro[1][2])) && (tabuleiro[1][2].equals(tabuleiro[2][2]))) {
			vencedor = true;
		} else if ((tabuleiro[0][0].equals(tabuleiro[1][1])) && (tabuleiro[1][1].equals(tabuleiro[2][2]))) {
			vencedor = true;
		} else if ((tabuleiro[0][2].equals(tabuleiro[1][1])) && (tabuleiro[1][1].equals(tabuleiro[2][0]))) {
			vencedor = true;
		}

		return vencedor;
	}

	public static void apresentarVencedor(String posicaoDaVez, int quantidadeJogadas, String tabuleiro[][],
			boolean vencedor) {
		// calcularVencedor(tabuleiro);

		System.out.println("Mostrar Vencedor");
		if (vencedor == true) {
			JOptionPane.showMessageDialog(null, "O vencedor foi o jogador: " + posicaoDaVez + "", "Fim de Jogo",
					JOptionPane.INFORMATION_MESSAGE);
		} else if ((quantidadeJogadas == 9) && (!vencedor == true)) {
			JOptionPane.showMessageDialog(null, "O jogo deu velha.", "Fim de Jogo", JOptionPane.INFORMATION_MESSAGE);
		}

	}
}