package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio2 {
	// Desenvolva um programa que pergunte qual � a maioridade civil do seu
	// �estado/pa�s� e que posteriormente
	// o usu�rio informe sua idade. Como resultado, o programa deve informar se ele
	// � ou n�o maior de idade.
	public static void main(String[] args) {

		int maioridadeEstadoPais;
		int idadeUsuario;

		maioridadeEstadoPais = Integer
				.parseInt(JOptionPane.showInputDialog("Informe a maioridade civil seu estado/pa�s: "));

		idadeUsuario = Integer.parseInt(JOptionPane.showInputDialog("Informe a sua idade: "));

		if (maioridadeEstadoPais <= idadeUsuario) {
			JOptionPane
					.showMessageDialog(null,
							"Voc� j� atingiu a maioridade civil de " + maioridadeEstadoPais + " anos. Voc� tem "
									+ idadeUsuario + " anos.",
							"Confirma��o de maioridade", JOptionPane.INFORMATION_MESSAGE);
		} else {
			JOptionPane
					.showMessageDialog(null,
							"Voc� ainda n�o atingiu a maioridade civil de " + maioridadeEstadoPais + " anos. Voc� tem "
									+ idadeUsuario + " anos.",
							"Confirma��o de maioridade", JOptionPane.INFORMATION_MESSAGE);
		}

	}

}
