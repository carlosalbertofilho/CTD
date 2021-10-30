/*
 *  Atividade: Mesa de trabalho - Funções
 *  Autor: Carlos Alberto Filho
 *  Aula 06 - Função 03
 */
/*
 * Crie uma função que recebe uma string e retorna a mesma frase,
 * mas com o caracter de exclamação ( ! ).
 */
let stringExclamacao = function (frase){
  return `${frase} !`
}
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});
console.log("03 - Recebe uma frase e retorna com exclamação");
readline.question("Entre sua frase: ", (frase) => {
  console.log(stringExclamacao(frase));
  readline.close();
});
