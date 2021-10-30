/*
 *  Atividade: Mesa de trabalho - Funções
 *  Autor: Carlos Alberto Filho
 *  Aula 06 - Função 05
 *
 * -----------------------------------
 * Crie uma função que calcule o valor da sua hora de trabalho,
 * tendo como parâmetro o seu salário mensal.
 * PS: considere que você trabalhe 160 horas no mês.
 */
let horaTrabalho = function ( salario )
{
  if (salario <= 0) { return "Salário Invalido!"; }
  return `O salário hora é ${(salario/160).toLocaleString('pt-br',{style: 'currency', currency: 'BRL'})}`;
}

const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("05 - Calcula a hora trabalhada com base no salário!");

readline.question("Entre seu salário em reais: ", (salario) => {
  console.log(horaTrabalho(salario));
  readline.close();
});
