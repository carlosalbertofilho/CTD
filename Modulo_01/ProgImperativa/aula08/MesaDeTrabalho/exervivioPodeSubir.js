/*
 * 1) Crie uma função podeSubir() que receba dois parâmetros:
 *    - altura da pessoa;
 *    - se está acompanhada.
 * Deve retornar um valor booleano (TRUE, FALSE) que indique
 * se a pessoa pode subir ou não, baseado nas seguintes condições:
 *    a) A pessoa deve medir mais de 1.40m e menos de 2 metros.
 *    b) Se a pessoa medir menos de 1.40m, deverá ir acompanhada.
 *    c) Se a pessoa medir menos de 1.20m, não poderá subir, nem
 *    acompanhada.
 *
 */

let podeSubir = function(altura = 0, seAcompanhado = false)
{
    if( altura < 1.20 ) return false;
    else if ( altura < 1.40 && seAcompanhado ) return true;
    else if ( altura > 1.40 || altura < 2.0 ) return true;
    else return false;
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

console.log("Passagem para a Montanha-Russa!\n");
const main = async () => {
    let altura = await input("Qual a sua altura: ");
    let seAcompanhado = await input("Você está acomhanhado: (true ou false)");
    let sePode = podeSubir(altura, seAcompanhado);

    console.log(`Pode Subir?, ${sePode}`);
    readline.close();
};

main();
