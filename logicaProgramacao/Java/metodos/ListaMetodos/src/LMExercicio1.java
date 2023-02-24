import javax.swing.JOptionPane;

public class LMExercicio1 {

	public static void main(String[] args) {
		/*
		 * Faça um programa que solicite o ano de nascimento de um usuário e seja
		 * mostrada a sua idade em 2021. Não é necessário considerar se o usuário já fez
		 * ou não aniversário. Um método deve ser criado para solicitar o ano de
		 * nascimento ao usuário e retorná-lo, e outro método deve ser criado para
		 * receber o ano de nascimento, calcular a idade atual e mostrá-la.
		 */

		// Main devemos utilizar como um gerenciador dos métodos
		int anoNascimento;

		// O método nascimento, não exige nenhum parâmetro, portanto, não o informo
		anoNascimento = informarAnoNascimento();
		
		// Diferente do método naascimento, o calculaIdade exisum parâmetro, portanto,
		// preciso informar um ou quantos existirem dentro do mesmo
		calcularIdade(anoNascimento);
	}

	public static void calcularIdade(int anoNascimento) {
		// Quando os dados são estáticos, é viável deixá-los dentro do método
		// responsável ao invés de usá-los junto do input de dados do usuários
		int anoAtual = 2021;
		int idadeAtual = anoAtual - anoNascimento;
		JOptionPane.showMessageDialog(null, "A idade é de: " + idadeAtual);
	}

	// Usar após "Static" o tipo de retorno que eu espero daquele método
	public static int informarAnoNascimento() {
		int anoNascimento;

		anoNascimento = Integer.parseInt(JOptionPane.showInputDialog("Informe o ano do nascimento: "));

		while (anoNascimento > 2021) {
			JOptionPane.showMessageDialog(null, "Ano informado é inválido.");
			anoNascimento = Integer.parseInt(JOptionPane.showInputDialog("Informe o ano do nascimento: "));
		}
		return anoNascimento;
	}
}
