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
    pelo console, onde &quot;n&quot; é um valor numérico inserido pelo usuário. Por exemplo:
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
}
