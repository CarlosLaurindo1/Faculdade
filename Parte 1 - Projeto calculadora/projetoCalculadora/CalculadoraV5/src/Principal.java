import javax.swing.JOptionPane;

public class Principal {
	
	//Entrou em desuso, quando invocamos as operações individualmente
	//private static Operacoes oper = new Operacoes();

	public static void main(String[] args) {
		int continuar;
		double resultado = 0;

		do {
			double num1 = EntradaSaida.solicitarNumero("1º");
			double num2 = EntradaSaida.solicitarNumero("2º");
			int operacao = EntradaSaida.solicitarOperacao();

			switch (operacao) {
			case 1:
				//Nós removemos a operação, portanto precisamos invocar os novos objetos
				//Contudo o resultado das operações será sempre 0.0 pois não repassamos para as classes os valores das variáveis
				Soma soma = new Soma();
				//Como precisamos preencher os valores para os números 1 e 2, os quais foram preenchidos no set de cada operação, os invocamos aqui
				soma.setNum1(num1);
				soma.setNum2(num2);
				resultado = soma.calculo();
				break;
			case 2:
				Subtracao sub = new Subtracao();
				sub.setNum1(num1);
				sub.setNum2(num2);
				resultado = sub.calculo();
				break;
			case 3:
				Multiplicacao multi = new Multiplicacao();
				multi.setNum1(num1);
				multi.setNum2(num2);
				resultado = multi.calculo();
				break;
			case 4:
				while (num2 == 0) {
					num2 = EntradaSaida.solicitarNumero("2º");
				}
				Divisao divi = new Divisao();
				divi.setNum1(num1);
				divi.setNum2(num2);
				resultado = divi.calculo();
				break;
			default:
				JOptionPane.showInputDialog(null, "Operação inválida! A calculadora será encerrada!");
				System.exit(0);
			}
			EntradaSaida.mostraResultado(resultado, operacao);
			continuar = Integer.parseInt(JOptionPane.showInputDialog("Deseja continuar calculando? 1 - Sim | 2 - Não"));
		} while (continuar == 1);

	}

}
