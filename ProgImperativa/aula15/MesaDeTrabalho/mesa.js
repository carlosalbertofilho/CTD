/*
    Atividade I: Crie um controlador responsável por criar novos Alunos.
    O controlador deve ser capaz de:
    ( x ) Cadastrar um novo aluno com nome, sobrenome.
    ( x ) Validar se o nome e sobrenome do aluno é uma string e/ou não esta vazio.
    ( x  ) Caso passe na validação:
        ( x ) Salvar o cadastro em um arquivo json.
    ( x ) Caso o contrário:
        ( x ) Recusar o Cadastro com uma mensagem de erro.
*/

// Importação do modulo path
const path = require('path')

/*
 * Importação do módulo File System do NodeJs
 */
const fs = require('fs')

// Carrega o arquivo do Banco de Dados
const arquivo = fs.readFileSync(path.resolve('.', 'modelo.json'), 'utf-8')

// Converte o arquivo de texto para objeto lieral para poder manipulá-lo.
const arquivoConvertidoEmJSON = JSON.parse(arquivo)

function Aluno (nomeAluno, sobreNomeAluno) {
  let nome
  let sobreNome
  setNome()
  setSobreNome()

  function validaNome () {
    return nomeAluno !== '' && typeof nomeAluno === 'string'
  }

  function validaSobreNome () {
    return sobreNomeAluno !== '' && typeof sobreNomeAluno === 'string'
  }

  function setNome () {
    if (validaNome()) nome = nomeAluno
  }

  function setSobreNome () {
    if (validaSobreNome()) sobreNome = sobreNomeAluno
  }

  this.getNome = function () {
    return nome
  }
  this.getSobrenome = function () {
    return sobreNome
  }
  function salvarNaBaseDados () {
    if (validaNome() && validaSobreNome()) {
      arquivoConvertidoEmJSON.push({
        nome,
        sobreNome
      })
      const arquivoConvertidoEmString = JSON.stringify(arquivoConvertidoEmJSON)
      fs.writeFileSync(path.resolve('.', 'modelo.json'), arquivoConvertidoEmString)
    } else {
      return 'Não é um nome válido.'
    }
  }
  salvarNaBaseDados()
}

const teste2 = new Aluno('Carlos', 'Filho')
console.log(teste2.getNome())
