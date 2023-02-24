package desafioExtraAlisson;

import javax.swing.JOptionPane;

public class desafioExtra {

	public static void main(String[] args) {
		/*
		 * Criar uma lista dos TOP 10, melhores games da vida (com nome do jogo,
		 * distribuidora, ano de lan�amento) 1� cadastrar um jogo e sua distribuidora 4
		 * op��es listar todos os jogos em ordem de inser��o listar todas as
		 * distribuidoras listar todos os jogos em ordem por ano de lan�amento sair da
		 * lista
		 */
		int quantidadeJogos;
		int opcao;

		quantidadeJogos = perguntarQuantosJogos();
		String[][] jogosCadastrados = new String[quantidadeJogos][3];
		jogosCadastrados = cadastrarJogos(quantidadeJogos);
		mostrarOpcoes(jogosCadastrados, quantidadeJogos);
		// buscarResultados(opcao, jogosCadastrados);

	}

	public static int perguntarQuantosJogos() {
		int quantidadeJogos;
		quantidadeJogos = Integer.parseInt(JOptionPane.showInputDialog(
				"Vamos definir um ranking dos seus games favoritos. \nDigite-os por ordem de prefer�ncia! \nEscolha um numero entre 1 e 10:"));
		while ((quantidadeJogos < 1) || (quantidadeJogos > 10)) {
			quantidadeJogos = Integer
					.parseInt(JOptionPane.showInputDialog("Informe uma quantidade superior a 1 e menor que 10."
							+ "\nEntre os jogos de v�deo game, quantos s�o seus favoritos?"));
		}

		return quantidadeJogos;
	}

	public static String[][] cadastrarJogos(int quantidadeJogos) {
		String[][] jogos = new String[quantidadeJogos][3];
		String retornarDados;
		int linha, coluna;

		retornarDados = "Nome do Jogo: | Fabricante: | Ano de cria��o: \n";
		for (linha = 0; linha < quantidadeJogos; linha++) {
			for (coluna = 0; coluna < 3; coluna++) {
				if (coluna == 0) {
					jogos[linha][0] = JOptionPane.showInputDialog(null, "Informe o nome do jogo: ");
				} else if (coluna == 1) {
					jogos[linha][1] = JOptionPane.showInputDialog(null,
							"Informe o est�dio fabricante do jogo: " + jogos[linha][0]);
				} else if (coluna == 2) {
					jogos[linha][2] = JOptionPane.showInputDialog(null,
							"Informe o ano em que " + jogos[linha][1] + " fabricou o jogo: " + jogos[linha][0]);

					while ((Integer.parseInt(jogos[linha][2]) < 0) || (Integer.parseInt(jogos[linha][2]) > 2023)) {
						jogos[linha][2] = integerParseInt(JOptionPane.showInputDialog(null,
								"Informe o ano em que " + jogos[linha][1] + " fabricou o jogo: " + jogos[linha][0]));
					}

				}
				retornarDados += jogos[linha][coluna];
			}
			retornarDados += "\n";
		}
		return jogos;
	}

	private static String integerParseInt(String showInputDialog) {
		// TODO Auto-generated method stub
		return null;
	}

	public static void mostrarOpcoes(String jogosCadastrados[][], int quantidadeJogos) {
		int opcao;
		int linha;
		int coluna;
		String apresenta = null;
		String[][] jogoAuxiliar = new String[quantidadeJogos][2];
		boolean bValid = false;
		int qtdJogos = quantidadeJogos;

		do {
			opcao = Integer.parseInt(JOptionPane.showInputDialog(null,
					" O que voc� deseja realizar?" + "\n 1 - Listar jogos por ordem de inser��o;"
							+ "\n 2 - Listar est�dio;" + "\n 3 - Listar jogos por ano de lan�amento;"
							+ "\n 4 - Encerrar."));
			while ((opcao < 1) || (opcao > 4)) {
				opcao = Integer.parseInt(JOptionPane.showInputDialog(null,
						" O que voc� deseja realizar?" + "\n 1 - Listar jogos por ordem de inser��o;"
								+ "\n 2 - Listar est�dios;" + "\n 3 - Listar jogos por ano de lan�amento;"
								+ "\n 4 - Encerrar."));
			}
			switch (opcao) {
			case 1:
				apresenta = "Nome do Jogo: | Fabricante: | Ano de cria��o: \n";
				for (linha = 0; linha < quantidadeJogos; linha++) {
					for (coluna = 0; coluna < 3; coluna++) {
						apresenta += jogosCadastrados[linha][coluna] + " | ";
					}
					apresenta += "\n";
				}
				JOptionPane.showMessageDialog(null, apresenta, "Lista de jogos", JOptionPane.INFORMATION_MESSAGE);
				break;
			case 2:
				apresenta = "Est�dios: \n";
				for (linha = 0; linha < quantidadeJogos; linha++) {
					for (coluna = 0; coluna < 3; coluna++) {
						if (coluna == 1) {
							apresenta += jogosCadastrados[linha][coluna];
						}
					}
					apresenta += "\n";
				}
				JOptionPane.showMessageDialog(null, apresenta, "Lista de jogos", JOptionPane.INFORMATION_MESSAGE);
				break;
			case 3:
				apresenta = "Nome do Jogo: | Fabricante: | Ano de cria��o: \n";
				do {
					bValid = false;
					// Uso a qtde de jogos neste caso -1 para que chegue e pare no limite
					for (linha = 0; linha < (qtdJogos - 1); linha++) {
						// para a valida��o da coluna, adicionamos o Coluna inicial, como sendo o n�mero
						// da coluna a qual estamos validando.
						if (Integer.parseInt(jogosCadastrados[linha][2]) > Integer
								.parseInt(jogosCadastrados[linha + 1][2])) {
							String aux = jogosCadastrados[linha][2];
							jogosCadastrados[linha][2] = jogosCadastrados[linha + 1][2];
							jogosCadastrados[linha + 1][2] = aux;

							aux = jogosCadastrados[linha][0];
							jogosCadastrados[linha][0] = jogosCadastrados[linha + 1][0];
							jogosCadastrados[linha + 1][0] = aux;

							aux = jogosCadastrados[linha][1];
							jogosCadastrados[linha][1] = jogosCadastrados[linha + 1][1];
							jogosCadastrados[linha + 1][1] = aux;
							bValid = true;
						}
					}
				} while (bValid);

				for (linha = 0; linha < quantidadeJogos; linha++) {
					for (coluna = 0; coluna < 3; coluna++) {
						apresenta += jogosCadastrados[linha][coluna] + " | ";
					}
					apresenta += "\n";
				}
				JOptionPane.showMessageDialog(null, apresenta, "Lista de jogos", JOptionPane.INFORMATION_MESSAGE);

				break;
			case 4:
				System.exit(opcao);
			}
		} while (opcao != 4);
	}
}
