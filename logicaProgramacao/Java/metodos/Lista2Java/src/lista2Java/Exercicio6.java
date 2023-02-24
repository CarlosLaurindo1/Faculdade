package lista2Java;

import javax.swing.JOptionPane;
import java.text.DecimalFormat;

public class Exercicio6 {

	public static void main(String[] args) {
		// Uma empresa deseja saber alguns dados sobre suas vendas no passado. Faça um
		// programa que armazene em um vetor o valor total das vendas de cada um dos 12
		// meses do ano (que deverá ser informado pelo usuário) e mostre:
		// O mês com a maior venda;
		// O mês com a menor venda;
		// A média das vendas do ano todo;
		// A média das vendas dos meses pares;
		// A média das vendas do 2º semestre.

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
					JOptionPane.showInputDialog("Informe o valor total da vendas do " + (i + 1) + "º mês de 2021: "));

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
				"O mês com maior venda foi o mês " + mesMaiorVenda + ";" + "\n O mês com menor venda foi o mês "
						+ mesMenorVenda + ";" + "\n A média dos valores recebidos durante o ano foi de: R$"
						+ df.format(mediaMensalAnual) + ";" + "\n A média dos valores recebidos nos meses pares é de: R$"
						+ df.format(mediaMensalPar) + ";"
						+ "\n A média dos valores recebidos durante o segundo semestre foi de: R$"
						+ df.format(mediaMensalSegSemestre) + ".",
				"Confirmação dos múltiplos", JOptionPane.INFORMATION_MESSAGE);

	}

}
