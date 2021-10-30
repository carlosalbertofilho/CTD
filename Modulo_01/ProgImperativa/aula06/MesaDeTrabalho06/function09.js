/*
 * Atividade: Mesa de trabalho - Funções
 *  Autor: Carlos Alberto Filho
 *  Aula 06 - Função 09
 * -----------------------------------
 * Crie uma função pela qual passamos o
 * raio de um círculo e ela retorna a
 * circunferência.
 * Dica: Investigue se o objeto Math tem entre
 * suas propriedades o número Pi.
 */

const calcCircunferencia = function( raio )
{
  return (2 * Math.PI * raio).toPrecision(3);
}

const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("09 - Calcula a circuferência !");
readline.question("Qual o raio? ", (raio) => {
  console.log(`O raio: ${raio}, a Circuferência: ${calcCircunferencia(raio)}`);
  readline.close();
})
