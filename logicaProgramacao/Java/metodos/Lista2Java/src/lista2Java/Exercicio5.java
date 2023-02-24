package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio5 {

	public static void main(String[] args) {
		// Fa�a um programa que solicite alguns dados dos usu�rios que frequentam um
		// clube. O programa deve solicitar a idade, se a pessoa � fumante ou n�o (1-
		// SIM, 2- N�O), seu sal�rio l�quido e h� quanto tempo frequenta o clube (em
		// meses). O usu�rio dever� digitar �encerrar� quando n�o tiver mais pessoas
		// para registrar. Como dados de sa�da, o programa deve exibir:
		// A m�dia das idades das pessoas;
		// A m�dia salarial das pessoas;
		// Quantos s�o fumantes e quantos n�o s�o fumantes;
		// A porcentagem de pessoas que frequentam o clube h� mais de 03 meses.

		double quantUsuarios = 0;
		double idade;
		double somaIdade = 0;
		double mediaIdade;
		String fumante;
		double totalFumante = 0;
		double totalNaoFumante = 0;
		double salarioLiquido;
		double somaSalarios = 0;
		double mediaSalarial;
		double tempoDeClube;
		double quantSupTresMeses = 0;
		double percMaisTresMeses;
		String encerrar;

		do {
			quantUsuarios = quantUsuarios + 1;

			idade = Integer.parseInt(JOptionPane.showInputDialog("Qual a idade do usu�rio? "));
			somaIdade = somaIdade + idade;
			mediaIdade = somaIdade / quantUsuarios;

			fumante = JOptionPane.showInputDialog("O usu�rio fumante (S - sim/Outro - n�o)? ");
			if ((fumante == "S") || (fumante == "S")) {
				totalFumante = totalFumante + 1;
			} else {
				totalNaoFumante = totalNaoFumante + 1;
			}

			salarioLiquido = Integer.parseInt(JOptionPane.showInputDialog("Qual o sal�rio l�quido do usu�rio? "));
			somaSalarios = somaSalarios + salarioLiquido;
			mediaSalarial = somaSalarios / quantUsuarios;

			tempoDeClube = Integer.parseInt(JOptionPane.showInputDialog("A quantos meses frequenta o clube? "));
			if (tempoDeClube >= 3) {
				quantSupTresMeses = quantSupTresMeses + 1;
			}

			encerrar = JOptionPane.showInputDialog("Deseja Encerrar ou Continuar (novo cadastro)? ");
			//usar ignoresCase (java)
		} while (!encerrar.equalsIgnoreCase("Encerrar"));

		percMaisTresMeses = ((quantSupTresMeses / quantUsuarios) * 100);

		JOptionPane.showMessageDialog(null,
				"Foram informados dados de " + quantUsuarios + " usu�rios." + "\n A m�dia de idade � de: " + mediaIdade
						+ " anos;" + "\n A m�dia salarial � de: R$" + mediaSalarial + ";"
						+ "\n Dos usu�rios informados, " + totalFumante + " s�o fumantes e " + totalNaoFumante
						+ " n�o s�o fumantes;" + "\n " + percMaisTresMeses
						+ "% dos usu�rios frequentam o clube a mais de 3 meses.",
				"Board cadastral", JOptionPane.INFORMATION_MESSAGE);

	}

}
