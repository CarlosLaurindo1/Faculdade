package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio5 {

	public static void main(String[] args) {
		//Fa�a um algoritmo que pe�a ao usu�rio 10 n�meros e mostre posteriormente quantos 
		//s�o pares e a soma deles, bem como quantos s�o �mpares e a soma deles.
		
		//solicitando ao usu�rio o input de 10 n�meros
		int somaPares = 0;
		int totalPares = 0;
		int somaImpares = 0;
		int totalImpares = 0;
		int [] valores = new int [10];
		
		for (int i=0; i<10; i++) {
			//valores[i] > 0;
			valores[i] = Integer.parseInt(JOptionPane.showInputDialog("Informe o "+ (i+1) +"� valor:"));
			if (valores[i] % 2 == 0) {
				somaPares = somaPares + (valores[i]);
				totalPares = totalPares + 1;
			}else {
				somaImpares = somaImpares + (valores[i]);
				totalImpares = totalImpares + 1;
			}
		} 	

		JOptionPane.showMessageDialog(null, " Existem "+ totalPares + " n�meros pares. A soma total dos pares �: " + somaPares
				+ "\n Existem "+ totalImpares + " n�meros �mpares. A soma total dos �mpares �: " + somaImpares, "Soma dos pares", JOptionPane.INFORMATION_MESSAGE);
	}
}