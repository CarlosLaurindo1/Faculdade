package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio3 {

	public static void main(String[] args) {
		// Escreva um programa que leia um n�mero inteiro e apresente um menu para o
		// usu�rio escolher:
		// Verificar se o n�mero � m�ltiplo de algum outro n�mero (pedir ao usu�rio esse
		// n�mero);
		// Verificar se o n�mero � par;
		// Verificar se o n�mero est� entre 0 e 1000;
		// Sair
		// Ap�s as entradas de dados, deve ser mostrado ao usu�rio o resultado da
		// respectiva op��o escolhida, e novamente o menu. Para a op��o �4- Sair�,
		// utilize System.exit(0);

		int numeroInteiro;
		int numeroMultiplo;
		int opcao;

		numeroInteiro = Integer.parseInt(JOptionPane.showInputDialog("Informe um n�mero inteiro: "));

		do {
			opcao = Integer.parseInt(JOptionPane.showInputDialog("Qual informa��o deseja identificar?"
					+ "\n 1 - Este n�mero � m�ltiplo de: " + "\n 2 - Este n�mero � par?"
					+ "\n 3 - Ente n�mero encontra-se entre o invervalo de 0 - 1000?" + "\n 4 - Sair"));
			switch (opcao) {
			case 1:
				numeroMultiplo = Integer
						.parseInt(JOptionPane.showInputDialog("Informe o n�mero que deseja confirmar se � multiplo: "));
				if (numeroInteiro % numeroMultiplo == 0) {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " � um m�ltiplo de: " + numeroMultiplo,
							"Confirma��o dos m�ltiplos", JOptionPane.INFORMATION_MESSAGE);
				} else {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " N�O � um m�ltiplo de: " + numeroMultiplo,
							"Confirma��o dos m�ltiplos", JOptionPane.INFORMATION_MESSAGE);
				}
				
			break;
			case 2:
				if (numeroInteiro % 2 == 0) {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " � um n�mero Par.",
							"Confirma��o Par", JOptionPane.INFORMATION_MESSAGE);
				} else {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " N�O � um n�mero Par.",
							"Confirma��o Par", JOptionPane.INFORMATION_MESSAGE);
				}
				break;
			case 3:
				if ((numeroInteiro >= 0) && (numeroInteiro <= 1000)) {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " est� entre o intervalo.",
							"Confirma��o de intervalo", JOptionPane.INFORMATION_MESSAGE);
				} else {
					JOptionPane.showMessageDialog(null, "O numero: " + numeroInteiro + " N�O est� entre o intervalo.",
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
