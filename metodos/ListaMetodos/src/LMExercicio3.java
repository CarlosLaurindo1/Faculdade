import javax.swing.JOptionPane;
import java.text.DecimalFormat;

public class LMExercicio3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		 * Faça um programa que a partir do valor de uma compra, faça o cálculo de um
		 * desconto para o usuário. O programa deve solicitar o valor total da compra
		 * por meio de um método, que deverá retorná-lo. Um método deve ser criado para
		 * receber o valor da compra e mostrar o valor final com desconto, considerando:
		 * Até R$100 - sem desconto, o valor permanece o mesmo De R$100,01 a R$200 -
		 * desconto de 20% Acima de R$200 - desconto de 30%
		 */
		double valorCompra;

		valorCompra = solicitarTotalDaCompra();
		totalDesconto(valorCompra);

	}
	public static double solicitarTotalDaCompra() {
		double valorCompra;

		valorCompra = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe o valor total da compra" + " R$: "));
		
		return valorCompra;
	}

	public static void totalDesconto(double valorCompra) {
		DecimalFormat df = new DecimalFormat("0.00");
		double desconto;
		double valorComDesconto;

		if (valorCompra <= 100) {
			desconto = 0;
		} else if ((valorCompra > 100) && (valorCompra <= 200)) {
			desconto = 20;
		} else {
			desconto = 30;
		}

		valorComDesconto = (valorCompra - (valorCompra * (desconto / 100)));

		JOptionPane.showMessageDialog(null,
				"O valor total da compra com desconto é de R$" + df.format(valorComDesconto) + ".",
				"Valor da compra com desconto.", JOptionPane.INFORMATION_MESSAGE);

	}

}
