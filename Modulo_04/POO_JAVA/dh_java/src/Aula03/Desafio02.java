
import java.util.Random;
import java.util.Scanner;

/*
Faça um programa que permita jogar o jogo "Pedra-Papel-Tesoura". Primeiro, o
aplicativo solicita o nome de cada jogador e, em seguida, qual a opção esse jogador
escolhe para jogar: pedra, papel ou tesoura. O jogo consiste em perguntar qual
opção cada um escolhe e somar pontos ao vencedor —se houver—. Defina e use
uma função chamada whichWin ou quemGanha com dois parâmetros com as
jogadas de cada um dos jogadores, que retorna 0 em caso de empate, 1 se o 2
primeiro vencer, 2 se o segundo vencer. O jogo termina quando o primeiro escolhe
&quot;*&quot; como indicador de fim.
 */

public class Desafio02 {
  private String nomeJogador;
  private String ultimaJogada;

  public String getNomeJogador() {
    return nomeJogador;
  }

  @Override
  public String toString() {
    return "O nome do Jogador é " + this.nomeJogador;
  }

  public void setNomeJogador(String nome) {
    this.nomeJogador = nome;
  }

  public void setUltimaJogada(String jogada) {
    this.ultimaJogada = jogada;
  }

  public String getUltimaJogada() {
    return this.ultimaJogada;
  }

  public void fazerJogada(Scanner input) {
    String resultado = "";
    System.out.println("Digite: 1 para Pedra");
    System.out.println("Digite: 2 para Papel");
    System.out.println("Digite: 3 para Tesoura");
    System.out.print("Entre sua jogada : ");
    String entrada = input.nextLine();
    try {
      switch (Integer.parseInt(entrada)) {
      case 1:
        resultado = "Pedra";
        break;
      case 2:
        resultado = "Papel";
        break;
      case 3:
        resultado = "Tesoura";
        break;
      default:
        System.out.println("Entre um número entre 1 e 3");
        fazerJogada(input);
      }
    } catch (NumberFormatException e) {
      System.out.println("Entrada Inválida!");
      fazerJogada(input);
    }
    this.setUltimaJogada(resultado);
  }

  public void jogadaMaquina() {
    Random jogada = new Random();
    String resultado = "";
    switch (jogada.nextInt(3) + 1) {
    case 1:
      resultado = "Pedra";
      break;
    case 2:
      resultado = "Papel";
      break;
    case 3:
      resultado = "Tesoura";
      break;
    }
    this.setUltimaJogada(resultado);
  }

  public static int quemGanha(String lanceDoJogador1, String lanceDoJogador2) {
    if (lanceDoJogador1.equals(lanceDoJogador2)) {
      return 0;
    } else if (lanceDoJogador1.equals("Pedra") && lanceDoJogador2.equals("Tesoura")) {
      return 1;
    } else if (lanceDoJogador1.equals("Tesoura") && lanceDoJogador2.equals("Papel")) {
      return 1;
    } else if (lanceDoJogador1.equals("Papel") && lanceDoJogador2.equals("Pedra")) {
      return 1;
    } else {
      return 2;
    }
  }

  public static boolean continuarJogando(Scanner input) {
    System.out.println("Deseja Continuar Jogando?");
    System.out.println("Digite 1 para continuar!");
    System.out.println("Digite 0 para sair!");
    String entrada = input.nextLine();
    Boolean resposta = null;
    try {
      switch (Integer.parseInt(entrada)) {
      case 1:
        resposta = true;
        break;
      case 0:
        resposta = false;
        break;
      default:
        System.out.println("Digite 0 ou 1");
        continuarJogando(input);
      }
    } catch (NumberFormatException e) {
      System.out.println("Entrada Inválida");
      continuarJogando(input);
    }
    return resposta;
 }

  public static void parabenizarGanhador(Desafio02 jogador1, Desafio02 jogador2) {
    int resultado = quemGanha(jogador1.getUltimaJogada(), jogador2.getUltimaJogada());
    switch (resultado) {
    case 0:
      System.out.println("O jogo empatou!");
      break;
    case 1:
      System.out.println("Parabéns ao jogador " + jogador1.getNomeJogador());
      break;
    case 2:
      System.out.println("Parabéns ao jogador " + jogador2.getNomeJogador());
      break;
    }
  }

  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    Desafio02 jogador1 = new Desafio02();
    Desafio02 jogador2 = new Desafio02();

    do {
      System.out.println("Bem-Vindo ao Pedra - Papel - Tesoura");

      System.out.println("Qual o seu nome: ");
      jogador1.setNomeJogador(input.nextLine());
      jogador2.setNomeJogador("IA");

      jogador1.fazerJogada(input);
      jogador2.jogadaMaquina();

      parabenizarGanhador(jogador1, jogador2);

    } while (continuarJogando(input));
  }
}
