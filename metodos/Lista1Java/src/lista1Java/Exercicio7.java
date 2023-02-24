package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio7 {

	public static void main(String[] args) {
		// Faça uma solução que alimente um vetor com 10 valores inteiros e também que
		// solicite
		// ao usuário a entrada de dados de um valor inteiro qualquer. A solução deverá
		// fazer uma
		// busca do valor, informado pelo usuário, no vetor e imprima a posição em que
		// este foi
		// encontrado ou se não foi encontrado.
		int numeroAleatorio;
		boolean bAchou = false;
		int posicaoCerta = 0;
		int[] valores = new int[10];
		
		
		// receber e guardar os 10 números
		for (int i = 0; i < 10; i++) {
			// valores[i] > 0;
			valores[i] = Integer.parseInt(JOptionPane.showInputDialog(
					" É necessário informar 10 números diferentes." + "\n Informe o " + (i + 1) + "º valor:"));
		}

		numeroAleatorio = Integer.parseInt(
				JOptionPane.showInputDialog(" Agora informe outro número." + "\n Informe um valor qualquer: "));

		for (int i = 0; i < 10; i++) {
			if (numeroAleatorio == valores[i]) {
				bAchou = true;
				posicaoCerta = i + 1;
				JOptionPane.showMessageDialog(null,
						"O último número informado, encontra-se na posição: " + posicaoCerta, "Encontrando a posição.",
						JOptionPane.WARNING_MESSAGE);
			}
		}

		if(bAchou == false) {
			JOptionPane.showMessageDialog(null, "O último número informado, não foi encontrado no vetor. ","Encontrando a posição.", JOptionPane.WARNING_MESSAGE);
		}

	}

}
