package introducaoJava;

//importando classe. JOptionPane para usarmos os painéis de diálogo
import javax.swing.JOptionPane;

public class Main {

	public static void main(String[] args) {
		
		int [] valores = new int [10];
		//receber e guardar os 10 números
		for (int i=0; i<10; i++) {
			//valores[i] > 0;
			valores[i] = Integer.parseInt(JOptionPane.showInputDialog("Informe o "+ (i+1) +"º valor:"));
		}
		
		String repetir;
		//início da estrutura de repetição para o menu
		do {
			//Solicitando opção do menu
			int opcao = Integer.parseInt(JOptionPane.showInputDialog("O que você deseja ver?"
					+ "\n 1 - Todos os valores"
					+ "\n 2 - Somente o primeiro valor"
					+ "\n 3 - Somento o último valor"
					+ "\n 4 - Ver os valores pares"
					+ "\n 5 - Maior valor do vetor"));
			
			//programação do menu
			switch (opcao) {
			//mostrando todos os valores
			case 1:
				for (int i=0; i<10; i++) {
					JOptionPane.showMessageDialog(null, valores[i], "Valor "+(i+1), JOptionPane.INFORMATION_MESSAGE);
				}
			break;
				//mostrando somente o primeiro valor
			case 2:
				JOptionPane.showMessageDialog(null,  valores[0], "Primeiro valor", JOptionPane.INFORMATION_MESSAGE);
			break;
				//mostrando somente o último valor
			case 3: 
				JOptionPane.showMessageDialog(null, valores[9], "Último valor", JOptionPane.INFORMATION_MESSAGE);
			break;
			// mostrando somente os valores pares
			case 4:
				String valoresPares = "";
				for (int i=0; i<10; i++) {
					if (valores[i]%2==0) {
						if (valoresPares!="") {
							valoresPares += ", "; 
						}
						valoresPares += valores[i];
					}
				}
				JOptionPane.showMessageDialog(null,  valoresPares, "Valores Pares", JOptionPane.INFORMATION_MESSAGE);
			break;
			//case 5:
			//	String maiorValor = "";
			//	for (int i=0; i<10; i++) {
			//		if (valores[i]) {
			//			
			//		}
			//	}
			//caso a opção seja inválida
			default:
				JOptionPane.showMessageDialog(null, "Opção inválida", "Erro", JOptionPane.WARNING_MESSAGE);
			break;
			}
						
			//Solicitando se o usuário deseja voltar ao menu
			repetir = JOptionPane.showInputDialog("Deseja voltar ao menu?"
					+ "\n Digite S para sim ou outro caractere para encerrar:");
			//fim da estrutura de repetição para o menu
		}while ((repetir.equals("S"))||(repetir.equals("s")));
		
	}

}
