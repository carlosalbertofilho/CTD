 /*
  Atividade I: Crie um Objeto Literal
  Vamos simular informações gerais de uma conta bancária. 
  Para isso deve-se basear nos seguintes recursos:
  ( x ) Nome completo do usuário.
  ( x ) Número da Agência.
  ( x ) Número da Conta.
  ( x ) Saldo Atual.
  ( x ) Depósito.
  ( x ) Saque.
*/

 var dadosDaConta = {
   nomeCompleto: 'Carlos Alberto S. dos S. Filho',
   numAgencia: '3981',
   numConta: '40234-1',
   saldoAtual: 10000,
   depositar: function (valor) {
      this.saldoAtual += valor;
      return 'Saldo: R$'+ this.saldoAtual;
   },
   sacar: function (valor) {
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
 }

/*
    Atividade II: Adicione funcionalidades ao Objeto Literal.
    ( x ) O usuário deve ser capaz de visualizar seu Saldo Atual.
    ( x ) O usuário deve ser capaz de Depositar. Após o depósito o sistema deve informar o Saldo Atual atualizado.
    ( x ) O usuário deve ser capaz de Sacar. Após o saque o sistema deve informar o Saldo Atual atualizado.
    ( x ) O usuário não pode ser capaz de sacar mais do que possui de Saldo. se não possui saldo o sistema deve responder uma mensagem de erro.
    Sujestões de mensagem:
    - Agora seu Saldo Atual é de R$ X.
    - Você realizou um saque de R$ X. Agora seu Saldo Atual é de R$ X.
    - Saldo insuficiente! Seu Saldo Atual é de R$ ${this.saldoAtual}.
*/
console.log('Saldo Atual: R$ '+ dadosDaConta.saldoAtual);
console.log('----------------------------------------');
console.log('Depósito: '+ dadosDaConta.depositar(1000));
console.log('----------------------------------------');
console.log('Saque. '+ dadosDaConta.sacar(500));
console.log('----------------------------------------');
console.log('Saque. '+ dadosDaConta.sacar(500));


/*
    Atividade III: Converta os valores em texto JSON
    ( x ) Converta o resultado o objeto literal em JSON.
*/
let json = JSON.stringify(dadosDaConta);
console.log('----------------------------------------');
console.log('Valor em JSON: ', json);

