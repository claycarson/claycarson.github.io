var hexArray = ['#00FFFF','#FF00FF','#FFFF00', '#000000']
var randomColor = hexArray[Math.floor(Math.random() * hexArray.length)];

$("a").css("color",randomColor); //A class selector would work too