/*
 *  Atividade: Mesa de trabalho - Funções
 *  Autor: Carlos Alberto Filho
 *  Aula 06 - Função 04
 */

/*
 * Crie uma função que calcule a idade dos cachorros,
 * considerando que 1 ano humano, equivale a 7 anos para eles.
 */

let idadeCachorro = function (idade) {
    if (idade <= 0 ) { return "Idade Invalida!"; }
    else {return `Idade equivale aproximadamente à ${idade * 7} anos.`;}
}

console.log("04 - Calcula idade aproximada do cachorro em ANOS");

// Instância readline
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

// Pergunta do usuário
readline.question("Entre a idade do cachorro em ANOS: ", (idade) => {
  console.log(idadeCachorro(idade));
  readline.close();
});
