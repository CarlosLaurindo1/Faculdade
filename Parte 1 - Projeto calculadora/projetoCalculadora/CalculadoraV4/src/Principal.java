import javax.swing.JOptionPane;

public class Principal {
	
	//Entrou em desuso, quando invocamos as opera��es individualmente
	//private static Operacoes oper = new Operacoes();

	public static void main(String[] args) {
		int continuar;
		double resultado = 0;

		do {
			double num1 = EntradaSaida.solicitarNumero("1�");
			double num2 = EntradaSaida.solicitarNumero("2�");
			int operacao = EntradaSaida.solicitarOperacao();

			switch (operacao) {
			case 1:
				//N�s removemos a opera��o
				//Contudo o resultado das opera��es ser� sempre 0.0 pois n�o repassamos para as classes os valores das vari�veis
				Soma soma = new Soma();
				//Como precisamos preencher os valores para os n�meros 1 e 2, os quais foram preenchidos no set de cada opera��o, os invocamos aqui
				soma.setNum1(num1);
				//Set ele inputa o dado para a vari�vel, e o get podemos resgatar o valor simultaneamente para confirmar o preenchimento ou n�o.
				soma.setNum2(num2);
				resultado = soma.calculaSoma();
				break;
			case 2:
				Subtracao sub = new Subtracao();
				sub.setNum1(num1);
				sub.setNum2(num2);
				resultado = sub.calculaSubtracao();
				break;
			case 3:
				Multiplicacao multi = new Multiplicacao();
				multi.setNum1(num1);
				multi.setNum2(num2);
				resultado = multi.calculaMultiplicacao();
				break;
			case 4:
				while (num2 == 0) {
					num2 = EntradaSaida.solicitarNumero("2�");
				}
				Divisao divi = new Divisao();
				divi.setNum1(num1);
				divi.setNum2(num2);
				resultado = divi.calculaDivisao();
				break;
			default:
				JOptionPane.showInputDialog(null, "Opera��o inv�lida! A calculadora ser� encerrada!");
				System.exit(0);
			}
			EntradaSaida.mostraResultado(resultado, operacao);
			continuar = Integer.parseInt(JOptionPane.showInputDialog("Deseja continuar calculando? 1 - Sim | 2 - N�o"));
		} while (continuar == 1);

	}

}
