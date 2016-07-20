document.addEventListener("DOMContentLoaded", function(event) { 
  var intialElement = document.getElementById('headline_scroll');

  setInterval(function(){
    var arr = intialElement.innerHTML.split("");
    var shiftCharacter = arr.shift();
    var restOfString = arr.join("");
    intialElement.innerHTML = restOfString + shiftCharacter;
  },100);
});

document.addEventListener("DOMContentLoaded", function(event) { 
  var intialElement = document.getElementById('sport_scroll');

  setInterval(function(){
    var arr = intialElement.innerHTML.split("");
    var shiftCharacter = arr.shift();
    var restOfString = arr.join("");
    intialElement.innerHTML = restOfString + shiftCharacter;
  },100);
});

document.addEventListener("DOMContentLoaded", function(event) { 
  var intialElement = document.getElementById('business_scroll');

  setInterval(function(){
    var arr = intialElement.innerHTML.split("");
    var shiftCharacter = arr.shift();
    var restOfString = arr.join("");
    intialElement.innerHTML = restOfString + shiftCharacter;
  },100);
});

document.addEventListener("DOMContentLoaded", function(event) { 
  var intialElement = document.getElementById('entertainment_scroll');

  setInterval(function(){
    var arr = intialElement.innerHTML.split("");
    var shiftCharacter = arr.shift();
    var restOfString = arr.join("");
    intialElement.innerHTML = restOfString + shiftCharacter;
  },100);
});

document.addEventListener("DOMContentLoaded", function() {
var d = document,
    x = d.querySelector('#intro2'),
    link = d.createElement('a');

    x.appendChild(link);
    link.innerHTML = "Hello, this is the news link";
    link.setAttribute('href', '/news');
});

