/*
 * Aula 10 - Front-End II - CDT
 * Aluno: Carlos Alberto Filho */

/*jshint esversion: 6 */
let botaoCriarContaReferencia = document.getElementById('botaoCriarConta');
let inputNomeReferencia = document.getElementById('inputNome');
let inputTermosReferencia = document.getElementById('inputTermos');
let inputTipoPessoa = document.getElementsByName('tipoPessoa');

let usuario = {};

botaoCriarContaReferencia.addEventListener('click', function(event){
  event.preventDefault;

  console.log("teste");

  usuario.nome = inputNomeReferencia.value;
  usuario.termos = inputTermosReferencia.value;
  for( let tipo of inputTipoPessoa ){
    if(tipo.checked){
      usuario.tipoPessoa = tipo.value;
    }
  }
  console.log(usuario);
});
