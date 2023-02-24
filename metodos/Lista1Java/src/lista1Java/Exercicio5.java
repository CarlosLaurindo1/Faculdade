package lista1Java;

import javax.swing.JOptionPane;

public class Exercicio5 {

	public static void main(String[] args) {
		//Faça um algoritmo que peça ao usuário 10 números e mostre posteriormente quantos 
		//são pares e a soma deles, bem como quantos são ímpares e a soma deles.
		
		//solicitando ao usuário o input de 10 números
		int somaPares = 0;
		int totalPares = 0;
		int somaImpares = 0;
		int totalImpares = 0;
		int [] valores = new int [10];
		
		for (int i=0; i<10; i++) {
			//valores[i] > 0;
			valores[i] = Integer.parseInt(JOptionPane.showInputDialog("Informe o "+ (i+1) +"º valor:"));
			if (valores[i] % 2 == 0) {
				somaPares = somaPares + (valores[i]);
				totalPares = totalPares + 1;
			}else {
				somaImpares = somaImpares + (valores[i]);
				totalImpares = totalImpares + 1;
			}
		} 	

		JOptionPane.showMessageDialog(null, " Existem "+ totalPares + " números pares. A soma total dos pares é: " + somaPares
				+ "\n Existem "+ totalImpares + " números ímpares. A soma total dos ímpares é: " + somaImpares, "Soma dos pares", JOptionPane.INFORMATION_MESSAGE);
	}
}