package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio7 {

	public static void main(String[] args) {
		// Fa�a uma solu��o que alimente um vetor com 10 valores inteiros e tamb�m que
		// solicite
		// ao usu�rio a entrada de dados de um valor inteiro qualquer. A solu��o dever�
		// fazer uma
		// busca do valor, informado pelo usu�rio, no vetor e imprima a posi��o em que
		// este foi
		// encontrado ou se n�o foi encontrado.
		int numeroAleatorio;
		boolean bAchou = false;
		int posicaoCerta = 0;
		int[] valores = new int[10];
		
		
		// receber e guardar os 10 n�meros
		for (int i = 0; i < 10; i++) {
			// valores[i] > 0;
			valores[i] = Integer.parseInt(JOptionPane.showInputDialog(
					" � necess�rio informar 10 n�meros diferentes." + "\n Informe o " + (i + 1) + "� valor:"));
		}

		numeroAleatorio = Integer.parseInt(
				JOptionPane.showInputDialog(" Agora informe outro n�mero." + "\n Informe um valor qualquer: "));

		for (int i = 0; i < 10; i++) {
			if (numeroAleatorio == valores[i]) {
				bAchou = true;
				posicaoCerta = i + 1;
				JOptionPane.showMessageDialog(null,
						"O �ltimo n�mero informado, encontra-se na posi��o: " + posicaoCerta, "Encontrando a posi��o.",
						JOptionPane.WARNING_MESSAGE);
			}
		}

		if(bAchou == false) {
			JOptionPane.showMessageDialog(null, "O �ltimo n�mero informado, n�o foi encontrado no vetor. ","Encontrando a posi��o.", JOptionPane.WARNING_MESSAGE);
		}

	}

}
