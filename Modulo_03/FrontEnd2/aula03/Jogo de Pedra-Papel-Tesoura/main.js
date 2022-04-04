/* jshint esversion: 6 */
// botões jogador 1
let pedra1BotaoReferencia = document.getElementById("pedra1");
let papel1BotaoReferencia = document.getElementById("papel1");
let tesoura1BotaoReferencia = document.getElementById("tesoura1");
// botões jogador 2
let pedra2BotaoReferencia = document.getElementById("pedra2");
let papel2BotaoReferencia = document.getElementById("papel2");
let tesoura2BotaoReferencia = document.getElementById("tesoura2");
// objeto que guarda as rodadas
let rodada = {};

// jogada da maquina
function jogadaMaquina(){
  return Math.random() * (3 -1) + 1;
}
