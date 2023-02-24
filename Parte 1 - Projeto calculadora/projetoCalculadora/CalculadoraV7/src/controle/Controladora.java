package controle;

import javax.swing.JOptionPane;
import modelo.Divisao;
import modelo.Soma;
import modelo.Subtracao;
import modelo.Multiplicacao;
import modelo.Operacoes;
import visualizacao.EntradaSaida;

public class Controladora {

	public void exibeMenu() {
		int continuar;
		double resultado = 0;
		Operacoes oper = null;
		// Invocamos o objeto opera��es para a chamada do tipo de opera��o

		do {
			double num1 = EntradaSaida.solicitarNumero("1�");
			double num2 = EntradaSaida.solicitarNumero("2�");
			int operacao = EntradaSaida.solicitarOperacao();

			switch (operacao) {
			case 1:
				// Substituimos a forma em cada uma das opera��es, apenas pela invoca��o dos
				// objetos.
				oper = new Soma();
				break;
			case 2:
				oper = new Subtracao();
				break;
			case 3:
				oper = new Multiplicacao();
				break;
			case 4:
				while (num2 == 0) {
					num2 = EntradaSaida.solicitarNumero("2�");
				}
				oper = new Divisao();
				break;
			default:
				JOptionPane.showInputDialog(null, "Opera��o inv�lida! A calculadora ser� encerrada!");
				System.exit(0);
			}
			// Chamamos tamb�m a altera��o dos numero previstos pela opera��o
			oper.setNum1(num1);
			oper.setNum2(num2);
			resultado = oper.calculo();
			EntradaSaida.mostraResultado(resultado, operacao);
			continuar = Integer.parseInt(JOptionPane.showInputDialog("Deseja continuar calculando? 1 - Sim | 2 - N�o"));
		} while (continuar == 1);

	}

}
