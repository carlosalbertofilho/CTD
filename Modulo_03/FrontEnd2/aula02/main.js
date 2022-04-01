/* jshint esversion: 6 */
let userAgeReference = document.getElementById("userAge");
let sendAnserReference = document.getElementById("sendAnswer");
let mensageReference = document.querySelector("#mensage");

sendAnserReference.addEventListener('click', event => {

  event.preventDefault();

  let answer = userAgeReference.value;

  console.log(answer);

  if (isNaN( answer )) mensageReference.innerText = "Por favor! Entre um número!";
  else if ( answer < 0 | answer > 130 ) mensageReference.innerText = "Por favor! Entre uma idade valida!";
  else if ( answer > 18 ) mensageReference.innerText = "É maior de idade";
  else mensageReference.innerText = "É menor de idade";

});
