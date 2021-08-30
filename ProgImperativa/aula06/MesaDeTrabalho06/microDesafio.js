/*
 *  Atividade: Mesa de trabalho - Funções
 *  Autor: Carlos Alberto Filho
 *  Aula 06
 */

/*
 * Permite a utilização do prompt pela linha de comando do NodeJS
 * Requere o modulo prompt -- deve ser instalado com npm install prompt
 */
const prompt = require('prompt'); // importa o modulo prompt
prompt.start(); // instancia o modulo para utilização
function onErr(err){ // trada eventual erro
  console.log(err);
  return 1;
}

/*
 * Micro Desafio 1 - Qual o retorno da função teste1(x,y)?
 */
console.log("Micro Desafio 1 - Qual o retorno da função teste1(x,y)?");
function teste1(x,y){
  return y-x;
}
console.log(teste1(10,40)); // O Retorno é 30

/*
 * Micro Desafio 2 - Qual o retorno da funç~ao teste2(x,y)?
 */
console.log("Micro Desafio 2 - Qual o retorno da função teste2(x,y)?");
function teste2(x,y){
  return x*2;
  console.log(x);
  return x/2;
}
console.log(teste2(10)); // O Retorno é 20. Desconsiderado o código abaixo do primeiro return

/*
 * Crie uma função que converta polegadas em centímetros.
 * Recebe pelo parâmetro polegadas e retorna seu equivalente em centímetros
 */
console.log("Funções Simples");
let polegadasParaCentimetros = function (x){
  return x*2.54;
}
prompt.get(['x'], function (err, resultado){
  if (err) {return onErr(err);}
  console.log("01 - Converte polegadas para centímetros");
  console.log('Entre valor em polegadas: '+resultado.x);
  console.log(resultado.x +" polegadas, equivale a "+polegadasParaCentimetros(resultado.x)+" centímetros");
});

/*
 * Crie uma função que receba uma string e a converta em um URL.
 * ex: "funcaojs" é retornado como "http://www.funcaojs.com.br"
 */
let stringToURL = function (url){
  return `https://www.${url}.com.br`;
}
prompt.get(['url'], function (err, resultado){
  if (err) { return onErr(err); }
  console.log("02 - Converte uma string em URL");
  console.log("Entre uma string: "+resultado.url);
  console.log(`URL: ${stringToURL(resultado.url)}`);
});
/*
 * Crie uma função que recebe uma string e retorna a mesma frase,
 * mas com o caracter de exclamação ( ! ).
 */
let stringExclamacao = function (frase){
  return `${frase} !`
}
prompt.get(['frase'], function(err, resultado){
  if (err) { return onErr(err); }
  console.log("03 - Recebe uma frase e retorna com exclamação");
  console.log("Entre sua frase: "+resultado.frase);
  console.log(stringExclamacao(resultado.frase));
});
