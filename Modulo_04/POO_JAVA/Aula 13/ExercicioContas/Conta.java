public abstract class Conta {
  private double saldo;

  public abstract sacar(double valor);

  public void depositar(double valor) {
      valor > 0 ?
          saldo += valor :
          System.out.println("Erro não é possível depositar valor negativo!");
  }

    public double informarSaldo(){
        return saldo;
    }
}
