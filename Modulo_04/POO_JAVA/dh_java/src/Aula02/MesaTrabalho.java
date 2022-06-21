package Aula02;

import java.util.ArrayList;
import java.util.List;

public class MesaTrabalho {
    public static void main(String[] args) {
        System.out.println(primeirosNPrimos(7));

    }
    /*
    Função que verifica se o número é primo
    */
    public static boolean sePrimo(int numero) {
        boolean primo = true;
        for( int i = 2; i < numero; i++){
            if ( numero % i == 0) primo = false;
        }
        return primo;
    }
    /*
    Desafio 1
    Implemente um programa que nos permita exibir os primeiros "n"; números primos
    pelo console, onde "n"; é um valor numérico inserido pelo usuário. Por exemplo:
    Com n = 7, o que o programa deve retornar é "Os primeiros 7 números primos são:
    2, 3, 5, 7, 11, 13, 17".
     */
    public static String primeirosNPrimos( int numero ){
        int contador = 2;
        List<String> resposta = new ArrayList<String>();
        do {
            if(sePrimo(contador)) resposta.add(Integer.toString(contador));
            contador++;
        } while (resposta.size() < numero);

        String mensagem = " Os primeiros "+ numero + " números primos são:";
        for(String i: resposta){
            mensagem += " "+ i +" ";
        }
        return mensagem;
    }

    /*
      Desafio 2
      Faça um programa que permita jogar o jogo "Pedra-Papel-Tesoura". Primeiro, o
      aplicativo solicita o nome de cada jogador e, em seguida, qual a opção esse jogador
      escolhe para jogar: pedra, papel ou tesoura. O jogo consiste em perguntar qual
      opção cada um escolhe e somar pontos ao vencedor —se houver—. Defina e use
      uma função chamada whichWin ou quemGanha com dois parâmetros com as
      jogadas de cada um dos jogadores, que retorna 0 em caso de empate, 1 se o
      primeiro vencer, 2 se o segundo vencer. O jogo termina quando o primeiro escolhe
      "*" como indicador de fim.
     */

}
