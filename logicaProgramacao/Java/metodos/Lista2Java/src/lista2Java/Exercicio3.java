package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio3 {

	public static void main(String[] args) {
		// Escreva um programa que leia um número inteiro e apresente um menu para o
		// usuário escolher:
		// Verificar se o número é múltiplo de algum outro número (pedir ao usuário esse
		// número);
		// Verificar se o número é par;
		// Verificar se o número está entre 0 e 1000;
		// Sair
		// Após as entradas de dados, deve ser mostrado ao usuário o resultado da
		// respectiva opção escolhida, e novamente o menu. Para a opção “4- Sair”,
		// utilize System.exit(0);

		int numeroInteiro;
		int numeroMultiplo;
		int opcao;

		numeroInteiro = Integer.parseInt(JOptionPane.showInputDialog("Informe um número inteiro: "));

		do {
			opcao = Integer.parseInt(JOptionPane.showInputDialog("Qual informação deseja identificar?"
					+ "\n 1 - Este número é múltiplo de: " + "\n 2 - Este número é par?"
					+ "\n 3 - Ente número encontra-se entre o invervalo de 0 - 1000?" + "\n 4 - Sair"));
			switch (opcao) {
			case 1:
				numeroMultiplo = Integer
						.parseInt(JOptionPane.showInputDialog("Informe o número que deseja confirmar se é multiplo: "));
				if (numeroInteiro % numeroMultiplo == 0) {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " é um múltiplo de: " + numeroMultiplo,
							"Confirmação dos múltiplos", JOptionPane.INFORMATION_MESSAGE);
				} else {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " NÃO é um múltiplo de: " + numeroMultiplo,
							"Confirmação dos múltiplos", JOptionPane.INFORMATION_MESSAGE);
				}
				
			break;
			case 2:
				if (numeroInteiro % 2 == 0) {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " é um número Par.",
							"Confirmação Par", JOptionPane.INFORMATION_MESSAGE);
				} else {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " NÃO é um número Par.",
							"Confirmação Par", JOptionPane.INFORMATION_MESSAGE);
				}
				break;
			case 3:
				if ((numeroInteiro >= 0) && (numeroInteiro <= 1000)) {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " está entre o intervalo.",
							"Confirmação de intervalo", JOptionPane.INFORMATION_MESSAGE);
				} else {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " NÃO está entre o intervalo.",
							"Conceito de intervalo", JOptionPane.INFORMATION_MESSAGE);
				}
				break;
			case 4:
				System.exit(0);
				break;
			}
		} while (opcao != 4);
	}
}
