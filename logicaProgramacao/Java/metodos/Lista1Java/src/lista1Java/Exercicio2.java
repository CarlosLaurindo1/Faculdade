package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio2 {
	// Desenvolva um programa que pergunte qual é a maioridade civil do seu
	// “estado/país” e que posteriormente
	// o usuário informe sua idade. Como resultado, o programa deve informar se ele
	// é ou não maior de idade.
	public static void main(String[] args) {

		int maioridadeEstadoPais;
		int idadeUsuario;

		maioridadeEstadoPais = Integer
				.parseInt(JOptionPane.showInputDialog("Informe a maioridade civil seu estado/país: "));

		idadeUsuario = Integer.parseInt(JOptionPane.showInputDialog("Informe a sua idade: "));

		if (maioridadeEstadoPais <= idadeUsuario) {
			JOptionPane
					.showMessageDialog(null,
							"Você já atingiu a maioridade civil de " + maioridadeEstadoPais + " anos. Você tem "
									+ idadeUsuario + " anos.",
							"Confirmação de maioridade", JOptionPane.INFORMATION_MESSAGE);
		} else {
			JOptionPane
					.showMessageDialog(null,
							"Você ainda não atingiu a maioridade civil de " + maioridadeEstadoPais + " anos. Você tem "
									+ idadeUsuario + " anos.",
							"Confirmação de maioridade", JOptionPane.INFORMATION_MESSAGE);
		}

	}

}
