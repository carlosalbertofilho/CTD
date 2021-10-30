/*
1. Programa em Javascript que mostra os números ímpares
Escreva um aplicativo em Javascript que mostre todos os números
ímpares de 1 até 100.
*/

let impares1A100 = function () {
  let i = 1;
  resposta = "";
  while (i < 101)
  {
    if( i % 2 != 0 ) resposta += i+" "; 
    i++;
  }
  console.log(resposta);
}
console.log("Exibe os números ímpares de 1 à 100");
impares1A100();

/*
2. Programa em Javascript que mostra os números pares
Escreva um aplicativo em Javascript que mostre todos os números pares
de 1 até 100.
*/
let pares1A100 = function () {
  let i = 1;
  resposta = "";
  while (i < 101)
  {
    if( i % 2 == 0 ) resposta += i+" "; 
    i++;
  }
  console.log(resposta);
}
console.log("Exibe os número pares de 1 à 100");
pares1A100();

/*
3. Programa em Javascript que mostra os números pares e ímpares
Escreva um aplicativo em Javascript que recebe um número inteiro e
mostra os números pares e ímpares (separados), de 1 até esse inteiro.
*/
let moduloParEImpar = function (numero){
  let par = "";
  let impar = "";
  for (let i = 1; i <= numero; i++)
  {
    if ( i % 2 == 0) par += i+" ";
    else impar += i+" ";
  }
  console.log("mostra os números pares e ímpares (separados), de 1 até " + numero);
  console.log("Pares: "+ par);
  console.log("Ímpares: "+ impar);
}

moduloParEImpar(30);

/*
4. Programa em Javascript que calcula a média das notas de uma turma
Escreva um programa que pergunte ao usuário quantos alunos tem na sala dele.
Em seguida, através de um laço while, pede ao usuário para que entre
com as notas de todos os alunos da sala, um por vez.
Por fim, o programa mostra a média aritmética da turma.
*/

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
console.log("04 - Calcula a média da turma!");
const main = async () => {
    let quantosAlunos = await input("Quantos alunos na turma: ");
    let notaTurma = [] ;
    let i = 0;
    let media = 0;
    while (i < quantosAlunos){
       notaTurma[i] = await input("Nota Aluno "+(i+1)+"º: ");
       i++;
    }
    i = 0;
    while (i < quantosAlunos ){
       media += parseFloat(notaTurma[i]);
       i++;
    }
    media /= quantosAlunos;
    console.log("A média da Turma é "+media);
    readline.close();
}

main();
