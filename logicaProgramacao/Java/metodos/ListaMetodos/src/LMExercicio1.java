import javax.swing.JOptionPane;

public class LMExercicio1 {

	public static void main(String[] args) {
		/*
		 * Fa�a um programa que solicite o ano de nascimento de um usu�rio e seja
		 * mostrada a sua idade em 2021. N�o � necess�rio considerar se o usu�rio j� fez
		 * ou n�o anivers�rio. Um m�todo deve ser criado para solicitar o ano de
		 * nascimento ao usu�rio e retorn�-lo, e outro m�todo deve ser criado para
		 * receber o ano de nascimento, calcular a idade atual e mostr�-la.
		 */

		// Main devemos utilizar como um gerenciador dos m�todos
		int anoNascimento;

		// O m�todo nascimento, n�o exige nenhum par�metro, portanto, n�o o informo
		anoNascimento = informarAnoNascimento();
		
		// Diferente do m�todo naascimento, o calculaIdade exisum par�metro, portanto,
		// preciso informar um ou quantos existirem dentro do mesmo
		calcularIdade(anoNascimento);
	}

	public static void calcularIdade(int anoNascimento) {
		// Quando os dados s�o est�ticos, � vi�vel deix�-los dentro do m�todo
		// respons�vel ao inv�s de us�-los junto do input de dados do usu�rios
		int anoAtual = 2021;
		int idadeAtual = anoAtual - anoNascimento;
		JOptionPane.showMessageDialog(null, "A idade � de: " + idadeAtual);
	}

	// Usar ap�s "Static" o tipo de retorno que eu espero daquele m�todo
	public static int informarAnoNascimento() {
		int anoNascimento;

		anoNascimento = Integer.parseInt(JOptionPane.showInputDialog("Informe o ano do nascimento: "));

		while (anoNascimento > 2021) {
			JOptionPane.showMessageDialog(null, "Ano informado � inv�lido.");
			anoNascimento = Integer.parseInt(JOptionPane.showInputDialog("Informe o ano do nascimento: "));
		}
		return anoNascimento;
	}
}
