/*
 *
 *  Atividade: Mesa de trabalho - Funções
 *  Autor: Carlos Alberto Filho
 *  Aula 06 - Função 08
 * -----------------------------------
 *
 * Crie uma função que receba um parâmetro e
 * retorne o tipo de dado deste parâmetro.
 * Dica: Isso te ajudará a entender o que o
 * operador typeof faz.
 */

const { stdin, stdout } = require('process');

const qualTipo = function( parametro )
{
  return (typeof parametro);
}

// Instancia o readline
//
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("08 - Retorna o tipo do parâmetro passado");
readline.question("Qual o parâmetro? ", (parametro) => {
  console.log(`O tipo de ${parametro} é ${qualTipo(parametro)}`);
  readline.close();
});
