package jogoDaVelha;

import javax.swing.JOptionPane;

public class desafioFinalJogoDaVelha {

	public static void main(String[] args) {

		JOptionPane.showMessageDialog(null,
				  "Vamos come�ar o Jogo! Cada jogador ter� um s�bolo e "
				+ "\ndever� escolher uma posi��o em tela. Vencer� aque-"
				+ "\nle que, preencher primeiro uma linha, ou coluna ou"
				+ "\ndiagonal com seu s�mbolo.", "Boas vindas.",
				JOptionPane.INFORMATION_MESSAGE);
		
		simboloJogador();

	}

	public static void simboloJogador() {
		String jogador1 = null;
		String jogador2 = null;

		jogador1 = JOptionPane.showInputDialog(null, "Jogador 1, escolha o seu s�mbolo (X ou O):");
		while ((jogador1.equalsIgnoreCase("X")) || (jogador1.equalsIgnoreCase("O"))) {
			jogador1 = JOptionPane.showInputDialog(null,
					"Op��o inv�lida" + "\n Jogador 1, escolha o seu s�mbolo (X ou O):");
		}
		if (jogador1.equalsIgnoreCase("X")) {
			jogador2 = "O";
		} else {
			jogador2 = "X";
		}

		JOptionPane.showMessageDialog(null,
				"Jogador 1, seu s�mbolo �: " + jogador1 + "\nJogador 2, seu s�mbolo �: " + jogador2, "Jogadores",
				JOptionPane.INFORMATION_MESSAGE);
	}

}
