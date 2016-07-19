document.addEventListener("DOMContentLoaded", function(event) {
  var scrollArrayString = document.getElementById('scroll-array').innerHTML
    
  var scrollArray = scrollArrayString.split(';');

  var counter = 0;

  fetch('https://api.particle.io/v1/devices/Birdie/led?access_token=e4b051c2d2ecfcdc018575e2a78ab3d06e8eadf6', {
    method: 'POST',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({
      scroll: scrollArray[counter],
    })
  })


  setInterval(function(){
    if (counter < scrollArray.length - 1){
      counter++;
    } else {
      counter = 0;
    }

    fetch('https://api.particle.io/v1/devices/Birdie/led?access_token=e4b051c2d2ecfcdc018575e2a78ab3d06e8eadf6', {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        scroll: scrollArray[counter],
      })
    })

  }, 30000);

  });