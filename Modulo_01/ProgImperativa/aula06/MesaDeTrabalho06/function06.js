/*
 *   Atividade: Mesa de trabalho - Funções
 *  Autor: Carlos Alberto Filho
 *  Aula 06 - Função 06
 *
 * -----------------------------------
 * Crie a função calculadora de IMC*
 * de uma pessoa, que recebe a altura
 * em centímetros e o peso em quilogramas.
 * Em seguida, execute a função, testando
 * diferentes valores. IMC, significa Índice
 * de Massa Corporal e é um parâmetro utilizado
 * para saber se o peso está de acordo com a altura.
 */

// Calcula o IMC
let calcIMC = function( peso, altura )
{
  return  (peso / ( altura^2 )).toPrecision(2);
}

// Mostra qual a faixa do IMC
let faixaIMC = function( imc )
{
  return (imc <= 18.4) ? "Magreza"   :
         (imc <= 24.8) ? "Normal"    :
         (imc <= 30.0) ? "Sobrepeso" : "Obesidade";
}
// Instacia o readline
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

//Macumba do prompt
function input(prompt)
{
  return new Promise((callbackFn, errorFn) => {
    readline.question(prompt, (uinput) => {
      callbackFn(uinput);
    }, () => {
      errorFn();
    });
  });
}

console.log("06 - Calcula o IMC e exibe a faixa!");
const main = async () => {
    let nome = await input("Qual o seu nome: ");
    let peso = await input("Qual o seu peso em kg: ");
    let altura = await input("Qual a sua altura em metro: ");
    let imc = calcIMC(peso, altura);

  console.log(`Prezado, ${nome}`);
  console.log(`Peso: ${peso}Kg e Altura: ${altura}`);
  console.log(`Seu IMC é de ${imc}`);
  console.log(`Sua faixa IMC é ${faixaIMC(imc)}`);
  readline.close();
}

main();
