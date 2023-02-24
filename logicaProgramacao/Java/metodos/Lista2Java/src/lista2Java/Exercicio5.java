package lista2Java;

import javax.swing.JOptionPane;

public class Exercicio5 {

	public static void main(String[] args) {
		// Faça um programa que solicite alguns dados dos usuários que frequentam um
		// clube. O programa deve solicitar a idade, se a pessoa é fumante ou não (1-
		// SIM, 2- NÃO), seu salário líquido e há quanto tempo frequenta o clube (em
		// meses). O usuário deverá digitar “encerrar” quando não tiver mais pessoas
		// para registrar. Como dados de saída, o programa deve exibir:
		// A média das idades das pessoas;
		// A média salarial das pessoas;
		// Quantos são fumantes e quantos não são fumantes;
		// A porcentagem de pessoas que frequentam o clube há mais de 03 meses.

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

			idade = Integer.parseInt(JOptionPane.showInputDialog("Qual a idade do usuário? "));
			somaIdade = somaIdade + idade;
			mediaIdade = somaIdade / quantUsuarios;

			fumante = JOptionPane.showInputDialog("O usuário fumante (S - sim/Outro - não)? ");
			if ((fumante == "S") || (fumante == "S")) {
				totalFumante = totalFumante + 1;
			} else {
				totalNaoFumante = totalNaoFumante + 1;
			}

			salarioLiquido = Integer.parseInt(JOptionPane.showInputDialog("Qual o salário líquido do usuário? "));
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
				"Foram informados dados de " + quantUsuarios + " usuários." + "\n A média de idade é de: " + mediaIdade
						+ " anos;" + "\n A média salarial é de: R$" + mediaSalarial + ";"
						+ "\n Dos usuários informados, " + totalFumante + " são fumantes e " + totalNaoFumante
						+ " não são fumantes;" + "\n " + percMaisTresMeses
						+ "% dos usuários frequentam o clube a mais de 3 meses.",
				"Board cadastral", JOptionPane.INFORMATION_MESSAGE);

	}

}
