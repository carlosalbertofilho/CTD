// Declarando variaveis
let operando_a;
let operando_b;
let operacao;

function init() {
  //variaveis
 let resultado = document.getElementById('resultado');
 const reset = document.getElementById('reset');
 const soma = document.getElementById('soma');
 const subtracao = document.getElementById('subtracao');
 const multiplicacao = document.getElementById('multiplicacao');
 const divisao = document.getElementById('divisao');
 const igual = document.getElementById('igual');
 const um = document.getElementById('um');
 const dois = document.getElementById('dois');
 const tres = document.getElementById('tres');
 const quatro = document.getElementById('quatro');
 const cinco = document.getElementById('cinco');
 const seis = document.getElementById('seis');
 const sete = document.getElementById('sete');
 const oito = document.getElementById('oito');
 const nove = document.getElementById('nove');
 const zero = document.getElementById('zero');

  //Eventos de click
  um.onclick = function(e) {
    resultado.textContent = resultado.textContent + "1";
  };
  dois.onclick = function(e) {
    resultado.textContent = resultado.textContent + "2";
  };
  tres.onclick = function(e) {
    resultado.textContent = resultado.textContent + "3";
  };
  quatro.onclick = function(e) {
    resultado.textContent = resultado.textContent + "4";
  };
  cinco.onclick = function(e) {
    resultado.textContent = resultado.textContent + "5";
  };
  seis.onclick = function(e) {
    resultado.textContent = resultado.textContent + "6";
  };
  sete.onclick = function(e) {
    resultado.textContent = resultado.textContent + "7";
  };
  oito.onclick = function(e) {
    resultado.textContent = resultado.textContent + "8";
  };
  nove.onclick = function(e) {
    resultado.textContent = resultado.textContent + "9";
  };
  zero.onclick = function(e) {
    resultado.textContent = resultado.textContent + "0";
  };
  reset.onclick = function(e) {
    resetar();
  };
  soma.onclick = function(e) {
    operando_a = resultado.textContent;
    operacao = "+";
    limpar();
  };
  subtracao.onclick = function(e) {
    operando_a = resultado.textContent;
    operacao = "-";
    limpar();
  };
  multiplicacao.onclick = function(e) {
    operando_a = resultado.textContent;
    operacao = "*";
    limpar();
  };
  divisao.onclick = function(e) {
    operando_a = resultado.textContent;
    operacao = "/";
    limpar();
  };
  igual.onclick = function(e) {
    operando_b = resultado.textContent;
    resultado.textContent = resolver(operando_a, operando_b, operacao);
  };

}

function limpar() {
  resultado.textContent = "";
}

function resetar() {
  resultado.textContent = "";
  operando_a = 0;
  operando_b = 0;
  operacao = "";
}

resolver = (operando_a, operando_b, operacao) => {
  let res = 0;
  switch (operacao) {
    case "+":
      res = parseFloat(operando_a) + parseFloat(operando_b);
      break;
    case "-":
      res = parseFloat(operando_a) - parseFloat(operando_b);
      break;
    case "*":
      res = (parseFloat(operando_a) * parseFloat(operando_b));
      break;
    case "/":
      res = parseFloat(operando_a) / parseFloat(operando_b);
      break;
  }
  return res;
};

exports.resolver = resolver;
