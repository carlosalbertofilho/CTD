// 1. Qual o retorno?
// let numbers =[22, 33, 54, 66, 72];
// console.log(numbers[numbers.length]);
// Retorna undefined

//2. Qual o retorno?
// let grupoDeAmigos = [ ["Harry", "Ron", "Hermione"], 
//                       ["Spiderman", "Hulk", "Ironman"], 
//                       ["Penélope Glamour", "Pierre Nodoyuna","Patán"] ];
// console.log(grupoDeAmigos[1][0]);
// Retorna Spiderman

//3. Qual o retorno?
// let str = “una string qualquer”
// let grupoDeAmigos = [ [45, 89, 0], 
//                       ["Digital", "House", true], 
//                       ["string", "123","false", 54, true, str] ];
// console.log(grupoDeAmigos[2][grupoDeAmigos[2].length - 1]);
// SyntaxError: Invalid or unexpected token

/*
* Array Invertido
*/

// 1. Crie a função imprimirInverso que pega um Array como um argumento e imprime 
// cada elemento em ordem reversa no console (você não precisa inverter o Array).
let imprimirInverso = function (array) {
   console.log("Retorna o inverso do array: " + array)
   let i = array.length - 1;
   let resposta = [];
   for(i; i >= 0; i--) resposta.push(array[i]);
   console.log("Resposta: " + resposta);
}

imprimirInverso(["Roxo", "Laranja", "Azul"]);

// 2. Crie a função inverter que recebe um Array como argumento e retorna um novo invertido.
let inverter = function (array) {
  let i = array.length - 1;
  let resposta = [];
  for(i; i >= 0; i--) resposta.push(array[i]);
  return resposta;
}
console.log(inverter(["Roxo", "Laranja", "Azul"]));

/*
somarArray()somarArray()
Neste exercício, você criará uma função somarArray() que aceita um array de números e retorna a soma de todos eles.
Exemplo:
somarArray([1,2,3])                // 6
somarArray([10, 3, 10, 4])     // 27
somarArray([-5,100])             // 95
Neste exercício, você criará uma função somarArray() que aceita um array de números 
e retorna a soma de todos eles.
Exemplo:
somarArray([1,2,3])            // 6
somarArray([10, 3, 10, 4])     // 27
somarArray([-5,100])           // 95
*/
let somarArray = function (array){
   let somatorio = 0;
   for (i =0; i < array.length; i++) somatorio += array[i];
   return somatorio;
}
console.log(somarArray([5, 23, 52, 12, 1]));
console.log(somarArray([1,2,3]));
console.log(somarArray([10, 3, 10, 4]));
console.log(somarArray([-5,100]));


/*
Simulação Array.join()
Neste exercício, você criará uma função chamada join que recebe um array e simula 
o comportamento do método Array.join().
Importante: Não poderá utilizar o método Array.join() original.
Por exemplo:
join(["o","l","á"]) deve retornar a string "olá".
join([“t”,"c","h","a,"u"]) deve retornar a string "tchau".
*/

let join = function (array) {
  let resposta="";
  for (i = 0; i < array.length; i++) resposta += array[i];
  return resposta;
}
console.log(join(["o","l","á"]));
console.log(join(["t","c","h","a","u"]));

/*
Criar a estrutura apropriada para armazenar os seguintes filmes e séries:
	"star wars", "matrix",  "mr. robot", "o preço do amanhã",  "a vida é bela". 
Importante: verifique se tudo funciona corretamente acessando qualquer um dos
filmes uma vez que a estrutura correspondente tenha sido criada.
*/

let filmes = ["star wars", "matrix",  "mr. robot", "o preço do amanhã",  "a vida é bela"];

console.log("Teste filme: " + filmes[1]);

/*
Os filmes devem estar todos em letras maiúsculas. Para isso, crie uma função que recebe um 
array por parâmetro e converta o conteúdo de cada elemento em letras maiúsculas.
Dica: revise o que faz o método de strings .toUpperCase().
*/

let paraCaixaAlta = function (array)
{
  let resposta = [];
  for(i = 0; i <= array.length; i++) resposta.push(array[i].toUpperCase());
  return resposta
}

// console.log(paraCaixaAlta(filmes));


/*
Crie outra estrutura semelhante à primeira, mas com os seguintes filmes de animação:
	"toy story", "finding Nemo", "kung-fu panda", "wally", "fortnite"
Em seguida, crie uma função que receba dois arrays como parâmetros, para poder adicionar
os elementos contidos no segundo array, dentro do primeiro, a fim de retornar um único array
com todos os filmes como seus elementos.
*/

let filmes2 = ["toy story", "finding Nemo", "kung-fu panda", "wally", "fortnite"];

let juntaArray = function (array1, array2) {
  for(i = 0; i < array2.length; i++) array1.push(array2[i]);
  return array1;
}

/*
Durante o processo, percebemos que o último elemento na série de filmes animados é, 
na verdade, um game. Agora devemos editar nosso código e modificá-lo para que possamos remover o 
último elemento antes de migrar o conteúdo para o array que contém todos os filmes.
PS: por precaução, salve o elemento que você vai deletar em uma variável.
*/

let deletado = filmes2.pop();

let todosFilmes = juntaArray(filmes, filmes2);
console.log(todosFilmes);

/*
Finalmente, recebemos dois arrays com classificações feitas por diferentes usuários do mundo 
nos filmes com o seguinte formato:
	const asiaScores = [8, 10, 6, 9, 10, 6, 6, 8, 4];
	const euroScores = [8, 10, 6, 8, 10, 6, 7, 9, 5];
Crie uma função que compare as notas e nos diga se elas são iguais ou diferentes.
*/

const asiaScores = [8, 10, 6, 9, 10, 6, 6, 8, 4];
const euroScores = [8, 10, 6, 8, 10, 6, 7, 9, 5];
let comparaScore = function (todosFilmes, score1, score2)
{
  for (i =0; i < todosFilmes.length; i++)
     if ( score1[i] == score2[i] ) console.log(todosFilmes[i] + " -- score1: "+score1[i]+" == score2: "+score2[i]);
     else console.log(todosFilmes[i] + " -- score1: "+score1[i]+" != score2: "+score2[i]);
}
comparaScore(todosFilmes, asiaScores, euroScores);

