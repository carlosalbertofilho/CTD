/*
 *
 *  Atividade: Mesa de trabalho - Funções
 *  Autor: Carlos Alberto Filho
 *  Aula 06 - Função 07
 * -----------------------------------
 * Crie uma função que receba uma string em minúsculas, converta-a em maiúsculas e as retorne.
 * Investigue o que o método de .toUpperCase() faz.
 */

const paraMaiuscula = function( palavra )
{
  return palavra.toUpperCase();
}

// Instacia o readline
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("07 - Entra uma string e converte para maiusculo.")
readline.question("Entre uma palavra ou frase: ", (frase) => {
  console.log(paraMaiuscula(frase));
  readline.close();
});
