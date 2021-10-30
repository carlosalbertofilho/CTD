/**
 * Responsável por inicializar a aplicação Calculadora. 
 */
function Calculadora () {
  let valorAcumulado = 0
  /**
   * Calcula múltiplos valores conforme a função de callback.
   * @param {number[]} valores Valores que deverão ser calculados.
   * @param {(valores:number[])=>number} operacaoRetorno Função responsável pela operação matemática.
   * @return {number} Resultado da operação matemática.
   */
  this.calcular = function (valores, operacaoRetorno) {
    valorAcumulado += operacaoRetorno(valores)
    return valorAcumulado
  }

  this.resetValorAcumulado = function () { valorAcumulado = 0 }

  function somar (valores) {
    let resultado = valores.reduce((valorAcumulado, valorAtual) => valorAcumulado + valorAtual)
    return resultado
  }
}

module.exports = Calculadora
