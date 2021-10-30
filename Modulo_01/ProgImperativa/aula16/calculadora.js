// Aula 16 - Arrow Function, callback e JavaDoc

// Aula 16 - Arrow function, Callback e Javadoc

// 1. Arrow Function 

let ArrowFunction = require('./modulos/arrow-function')
let Callback = require('./modulos/callback')

console.log('Arrow Function');
console.log('Um parametro:', ArrowFunction.temIdadeParaBeber(17));
console.log('Sem parametro:', ArrowFunction.pegarUmValorAleatorio());

console.log('------------------------');

// 2. Callback

console.log('Callback');

function somar(valores) {
    var resultadoDaSomaDeValores = valores.reduce( (valorAcumula, valorAtual) => valorAcumula + valorAtual );
    return resultadoDaSomaDeValores;
}

function multiplicar(valores) {
    var resultadoDaMultiplicacaoDeValores = valores.reduce( (valorAcumula, valorAtual) => valorAcumula * valorAtual );
    return resultadoDaMultiplicacaoDeValores;
}

console.log('Somar:', Callback.calcular(
    [2, 2], // Valores que desejo calcular
    somar // Função Callback
)); // 4
console.log('Multiplicar:', Callback.calcular([2, 5], multiplicar)); // 10

/**
 *
 * Função
 * @param {number[]} valores Valores que deseja calcular
 * @param {(valores:number[]= 
 *
 */
