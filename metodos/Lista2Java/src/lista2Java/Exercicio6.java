package lista2Java;

import javax.swing.JOptionPane;
import java.text.DecimalFormat;

public class Exercicio6 {

	public static void main(String[] args) {
		// Uma empresa deseja saber alguns dados sobre suas vendas no passado. Fa�a um
		// programa que armazene em um vetor o valor total das vendas de cada um dos 12
		// meses do ano (que dever� ser informado pelo usu�rio) e mostre:
		// O m�s com a maior venda;
		// O m�s com a menor venda;
		// A m�dia das vendas do ano todo;
		// A m�dia das vendas dos meses pares;
		// A m�dia das vendas do 2� semestre.

		double mediaMensalPar;
		double mediaMensalAnual;
		double mediaMensalSegSemestre;
		double totalRecebidoPar = 0;
		double totalRecebidoAno = 0;
		double totalRecebidoSegSemestre = 0;
		double menorValor = 0;
		double maiorValor = 0;
		int mesMenorVenda = 0;
		int mesMaiorVenda = 0;
		double[] valorVenda = new double[12];
		DecimalFormat df = new DecimalFormat("0.00");
		
		for (int i = 0; i < 12; i++) {
			valorVenda[i] = Double.parseDouble(
					JOptionPane.showInputDialog("Informe o valor total da vendas do " + (i + 1) + "� m�s de 2021: "));

			totalRecebidoAno = totalRecebidoAno + valorVenda[i];
			
			if (i == 0) {
				menorValor  = valorVenda[i];
				mesMenorVenda = i + 1;				
			}
			
			if (valorVenda[i] < menorValor) {
				menorValor  = valorVenda[i];
				mesMenorVenda = i + 1;
			} else if (valorVenda[i] > maiorValor) {
				maiorValor = valorVenda[i];
				mesMaiorVenda = i + 1;
			}

			if (i % 2 == 0) {
				totalRecebidoPar = totalRecebidoPar + valorVenda[i];
			}

			if (i >= 6) {
				totalRecebidoSegSemestre = totalRecebidoSegSemestre + valorVenda[i];
			}
		}
		mediaMensalAnual = totalRecebidoAno / 12;
		mediaMensalPar = totalRecebidoPar / 6;
		mediaMensalSegSemestre = totalRecebidoSegSemestre / 6;

		JOptionPane.showMessageDialog(null,
				"O m�s com maior venda foi o m�s " + mesMaiorVenda + ";" + "\n O m�s com menor venda foi o m�s "
						+ mesMenorVenda + ";" + "\n A m�dia dos valores recebidos durante o ano foi de: R$"
						+ df.format(mediaMensalAnual) + ";" + "\n A m�dia dos valores recebidos nos meses pares � de: R$"
						+ df.format(mediaMensalPar) + ";"
						+ "\n A m�dia dos valores recebidos durante o segundo semestre foi de: R$"
						+ df.format(mediaMensalSegSemestre) + ".",
				"Confirma��o dos m�ltiplos", JOptionPane.INFORMATION_MESSAGE);

	}

}
