
import java.util.Scanner;

/*
Escreva uma função que receba três números e retorne o maior valor entre os três números. Em seguida, faça um programa que permita a entrada de 3 valores pelo usuário, use a função e exiba o resultado.	
 */
public class Desafio03 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int a = entreNumero(entrada, "Entre um número: ");
        int b = entreNumero(entrada, "Entre um número: ");
        int c = entreNumero(entrada, "Entre um número: ");
        String resposta = "O maior número entre: ";
        resposta += a+", ";
        resposta += b+", ";
        resposta += c+", ";
        resposta += "é "+maiorNumero(a, b, c);

        System.out.println(resposta);
    }
    public static int maiorNumero(int a, int b){
        return (a > b ? a : b);
    }
    public static int maiorNumero(int a, int b, int c){
        return maiorNumero(maiorNumero(a, b), c);
    }

    public static int entreNumero(Scanner entrada, String msg) {
        System.out.print(msg);
        int resposta = 0;
        try {
            resposta = Integer.parseInt(entrada.nextLine());
        } catch (NumberFormatException e) {
            entreNumero(entrada, msg);
        }
        return resposta;
    }
}
