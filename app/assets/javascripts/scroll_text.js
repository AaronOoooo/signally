document.addEventListener("DOMContentLoaded", function(event) { 
  var intialElement = document.getElementById('headline_scroll');

  setInterval(function(){
    var arr = intialElement.innerHTML.split("");
    var shiftCharacter = arr.shift();
    var restOfString = arr.join("");
    intialElement.innerHTML = restOfString + shiftCharacter;
  },200);
});