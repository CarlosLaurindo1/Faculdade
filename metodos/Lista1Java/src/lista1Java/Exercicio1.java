package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio1 {
	// Fa�a um algoritmo que pe�a para o usu�rio inserir uma quantidade em horas,
	// outra em minutos e
	// mais uma em segundos e mostre quantos segundos esse hor�rio cont�m.
	public static void main(String[] args) {

		int horas = 0;
		int minutos = 0;
		int segundos = 0;
		int totalSegundos;

		while (horas < 0) {
			horas = Integer.parseInt(JOptionPane.showInputDialog("Informe o total de horas: "));
		}

		while (minutos < 0) {
			minutos = Integer.parseInt(JOptionPane.showInputDialog("Informe o total de minutos: "));
		}
		while (segundos < 0) {
			segundos = Integer.parseInt(JOptionPane.showInputDialog("Informe o total de segundos: "));
		}

		totalSegundos = ((((horas * 60) * 60) + (minutos * 60) + segundos));
		;
		// apresentar a soma dos segundos
		JOptionPane.showMessageDialog(null, "O total de segundos �: " + totalSegundos, "Total de sergundos",
				JOptionPane.INFORMATION_MESSAGE);
	}
}
