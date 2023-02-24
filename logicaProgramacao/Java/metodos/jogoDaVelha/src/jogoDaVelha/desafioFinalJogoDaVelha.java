package jogoDaVelha;

import javax.swing.JOptionPane;

public class desafioFinalJogoDaVelha {

	public static void main(String[] args) {

		JOptionPane.showMessageDialog(null,
				  "Vamos começar o Jogo! Cada jogador terá um síbolo e "
				+ "\ndeverá escolher uma posição em tela. Vencerá aque-"
				+ "\nle que, preencher primeiro uma linha, ou coluna ou"
				+ "\ndiagonal com seu símbolo.", "Boas vindas.",
				JOptionPane.INFORMATION_MESSAGE);
		
		simboloJogador();

	}

	public static void simboloJogador() {
		String jogador1 = null;
		String jogador2 = null;

		jogador1 = JOptionPane.showInputDialog(null, "Jogador 1, escolha o seu símbolo (X ou O):");
		while ((jogador1.equalsIgnoreCase("X")) || (jogador1.equalsIgnoreCase("O"))) {
			jogador1 = JOptionPane.showInputDialog(null,
					"Opção inválida" + "\n Jogador 1, escolha o seu símbolo (X ou O):");
		}
		if (jogador1.equalsIgnoreCase("X")) {
			jogador2 = "O";
		} else {
			jogador2 = "X";
		}

		JOptionPane.showMessageDialog(null,
				"Jogador 1, seu símbolo é: " + jogador1 + "\nJogador 2, seu símbolo é: " + jogador2, "Jogadores",
				JOptionPane.INFORMATION_MESSAGE);
	}

}
