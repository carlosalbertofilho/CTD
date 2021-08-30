/*
 *  Atividade: Mesa de trabalho - Funções
 *  Autor: Carlos Alberto Filho
 *  Aula 06 - Resposta Função 01
 */

/*
 * Crie uma função que converta polegadas em centímetros.
 * Recebe pelo parâmetro polegadas e retorna seu equivalente em centímetros
 */
console.log("Funções Simples");
let polegadasParaCentimetros = function (x){
  return x*2.54;
}

// Instancia o readline
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("01 - Converte polegadas para centímetros");
readline.question("Entre valor em polegadas: ", (valor) => {
  console.log(`O valor ${valor} em centímetros é: ${polegadasParaCentimetros(valor)}`);
  readline.close();
});
