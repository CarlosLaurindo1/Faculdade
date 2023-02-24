package desafioExtraAlisson;

import javax.swing.JOptionPane;

public class AlissonTest {
    public static void main(String[] args) {

        int[] jogosCadastrados = new int[4];
        boolean bValid = false;

        jogosCadastrados[0] = 2002;
        jogosCadastrados[1] = 1990;
        jogosCadastrados[2] = 2002;
        jogosCadastrados[3] = 1995;

        do {
            bValid = false;

            for (int i = 0; i < 3; i++) {
                if (jogosCadastrados[i] > jogosCadastrados[i + 1]) {
                    int aux = jogosCadastrados[i];
                    jogosCadastrados[i] = jogosCadastrados[i + 1];
                    jogosCadastrados[i + 1] = aux;
                    bValid = true;
                }
            }
       } while (bValid);

    }
}

