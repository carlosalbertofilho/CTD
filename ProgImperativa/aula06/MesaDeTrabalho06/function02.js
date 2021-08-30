/*
 *  Atividade: Mesa de trabalho - Funções
 *  Autor: Carlos Alberto Filho
 *  Aula 06 - Função 02
 */


/*
 * Crie uma função que receba uma string e a converta em um URL.
 * ex: "funcaojs" é retornado como "http://www.funcaojs.com.br"
 */
let stringToURL = function (url){
  return `https://www.${url}.com.br`;
}

const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("02 - Converte uma string em URL");
readline.question("Entre uma string: ", (url) => {
  console.log(`URL: ${stringToURL(url)}`);
  readline.close();
});
