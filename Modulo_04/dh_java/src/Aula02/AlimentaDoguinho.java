package Aula02;

import java.util.Scanner;

public class AlimentaDoguinho {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.print("Digite o nome do cachorro: ");
        String nome = entrada.next();

        System.out.print("Digite a quantida de pacotes: ");
        float quantidadePacote = entrada.nextFloat();

        System.out.println(quantosPacotes(nome, quantidadePacote));
    }
    public static String quantosPacotes(String nome, float quantidadeRacao) {
        Scanner entrada = new Scanner(System.in);
        int pacote = 0;
        float pesoPorPacote = 0.0f;
        if( quantidadeRacao >= 3) {
            while( pesoPorPacote < quantidadeRacao ){
                System.out.print("Digite o peso por pacote: ");
                float pesoPorPacoteDigitado = entrada.nextFloat();

                pesoPorPacote = pesoPorPacote + pesoPorPacoteDigitado;
                pacote = pacote + 1;
            }
            return "O " + nome + " precisa de " + pacote + " por dia";
        } else {
            return "O cachorro ladrou a noite toda. Perdeu!!";
        }

    }
}
