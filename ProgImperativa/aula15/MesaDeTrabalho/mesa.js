/*
    Atividade I: Crie um controlador responsável por criar novos Alunos.
    O controlador deve ser capaz de:
    ( x ) Cadastrar um novo aluno com nome, sobrenome.
    ( x ) Validar se o nome e sobrenome do aluno é uma string e/ou não esta vazio.
    (  ) Caso passe na validação:
        (  ) Salvar o cadastro em um arquivo json.
    (  ) Caso o contrário:
        (  ) Recusar o Cadastro com uma mensagem de erro.
*/

function Aluno(nomeAluno, sobrenomeAluno) {
  let nome
  let sobrenome = sobrenome
  this.setNome = function(nome){
      if (nome != '' && typeof nome == String) this.nome = nome
  }
  this.setSobrenome = function (sobrenome)  {
      if (sobrenome != '' && typeof sobrenome == String) sobrenome = sobrenome
  }
  this.getNome = function(){
    return nome
  }
  this.getSobrenome = function () {
    return getSobrenome
  }
}

let teste2 = new Aluno('Carlos', 'Filho' )
console.log(teste2.getNome())

