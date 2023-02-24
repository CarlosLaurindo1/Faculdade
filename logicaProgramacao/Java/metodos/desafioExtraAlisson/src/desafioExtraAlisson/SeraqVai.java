package desafioExtraAlisson;

import javax.swing.JOptionPane;

public class SeraqVai {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int linha;
		int[] jogosCadastrados = new int[4];
		boolean bValid = false;

		for (linha = 0; linha < 4; linha++) {
			jogosCadastrados[linha] = Integer.parseInt(JOptionPane.showInputDialog(null, "ano de inserção:"));

			if (linha > 0) {
				do {
					bValid = false;

					for (int i = 0; i < 3; i++) {
						if (jogosCadastrados[i] > jogosCadastrados[i + 1]) {
							int aux = jogosCadastrados[i];
							jogosCadastrados[i] = jogosCadastrados[i + 1];
							jogosCadastrados[i + 1] = aux;
							bValid = true;
						}
					}
				} while (bValid);
			}
		}
	}
}
