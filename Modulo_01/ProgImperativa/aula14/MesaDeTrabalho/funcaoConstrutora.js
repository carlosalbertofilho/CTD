/*
 * ( X ) Atividade 1 - Converta o arquivo HTML para JavaScript
 * ( X ) Atividade 2 - Converta de objeto literal para função construtora
 * Ativiade 3 - Divida o código em Módulo
 * Atividade 4 - Importe o módulo para o documento principal
 *
 */

function Cliente(nomeCompleto, numAgencia, numConta, saldo) {
  this.nomeCompleto = nomeCompleto;
  this.numAgencia = numAgencia;
  this.numConta = numConta;

   this.depositar = function (valor) {
      this.saldoAtual += valor;
      return 'Saldo: R$'+ this.saldoAtual;
   }

  this.sacar = function (valor) {
       var temSaldo = this.saldoAtual >= valor ;
       if (temSaldo)
       {
         this.saldoAtual -= valor;
         return 'Saque efetuado! \n Saldo: R$ '+ this.saldoAtual;
       } else 
       {
         return 'Saldo insuficiente';
       }
  }
  let conta1 = new Cliente('Carlos Alberto Filho', '3981', '40234-1');
}
