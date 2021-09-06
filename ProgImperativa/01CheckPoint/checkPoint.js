//
//  Autor: Carlos Alberto Silva dos Santos Filho
//  CheckPoint -- Programação Imperativa
// - Precisamos desenvolver um menu para um microondas super veloz,
// onde teremos 5 opções de comida com seus respectivos tempos pré-definidos. 

//       1 - Pipoca – 10 segundos (padrão);
//       2 - Macarrão – 8 segundos (padrão);
//       3 - Carne – 15 segundos (padrão);
//       4 - Feijão – 12 segundos (padrão);
//       5 - Brigadeiro – 8 segundos (padrão); 

// - O usuário poderá alterar o tempo padrão, aumentando ou diminuindo de acordo com sua vontade.
// Se o tempo informado for maior que 2x o necessário, exibir mensagem que a comida queimou.
// - Se o tempo for menor que o padrão, exibir a mensagem: "tempo insuficiente"; 
// - Opções não listadas no menu, devem exibir uma mensagem de erro: "Prato inexistente";
// - Se o tempo for 3x maior que o necessário para o prato, o microondas deve exibir a mensagem: “kabumm”;
// - No final de cada tarefa, o microondas deverá exibir a mensagem: "Prato pronto, bom apetite!!!".
//

// função que verifica o tempo padrão de preparo e exibi mensagem
let verificaTempo = function(tempo, tempoPadrao)
{
    if ( tempo < tempoPadrao )
    {
        console.log("Tempo insuficiente!!");
        return false;
    } else if ( tempo >= ( tempoPadrao * 3 ) )
    {
        console.log("Kabumm......");
        return false;
    }  else if ( tempo >= ( tempoPadrao * 2 ) )
    {
        console.log("Comida Queimou!!");
        return false;
    }
    return true;
};


// função que cozinha Pipoca
let pipoca = function(tempo)
{
    let tempoPadrao = 10;
    if (verificaTempo(tempo, tempoPadrao))
       console.log("Prato pronto, bom apetite!!!");
};

// função que cozinha Macarrão
let macarrao = function(tempo)
{
    let tempoPadrao = 8;
    if (verificaTempo(tempo, tempoPadrao))
        console.log("Prato pronto, bom apetite!!!");
};

// função que cozinha Carne
let carne = function(tempo)
{
    let tempoPadrao = 15;
    if (verificaTempo(tempo, tempoPadrao))
        console.log("Prato pronto, bom apetite!!!");
};

// função que cozinha Feijão
let feijao = function(tempo)
{
    let tempoPadrao = 12;
    if (verificaTempo(tempo, tempoPadrao))
        console.log("Prato pronto, bom apetite!!!");
};

// função que cozinha brigadeiro 
let brigadeiro = function(tempo)
{
    let tempoPadrao = 8;
    if (verificaTempo(tempo, tempoPadrao))
        console.log("Prato pronto, bom apetite!!!");
};

// Função menu
let menu = function( opcao, tempo )
{
    switch ( opcao )
    {
        case "1":
        pipoca(tempo);
        break;
        case "2":
        macarrao(tempo);
        break;
        case "3":
        carne(tempo);
        break;
        case "4":
        feijao(tempo);
        break;
        case "5":
        brigadeiro(tempo);
        break;
        default:
        console.log("Prato inexistente!");
        break;
    };
};

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
};

console.log("01 - Exercício do Micro-ondas!!!");
const main = async () => {
    console.log("Escolha uma das opções abaixo! ");
    console.log("1 - Pipoca – 10 segundos (Tempo padrão)");
    console.log("2 - Macarrão – 8 segundos (Tempo padrão)");
    console.log("3 - Carne – 15 segundos (Tempo padrão)");
    console.log("4 - Feijão – 12 segundos (Tempo padrão)");
    console.log("5 - Brigadeiro – 8 segundos (Tempo padrão)");
    let opcao = await input("Escolha uma opção de 1 à 5: ");
    let tempo = await input("Defina o tempo de preparo em segundos: ");
    menu(opcao, tempo);
    readline.close();
};

main();

