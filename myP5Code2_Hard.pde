//Stars
var galixyXPos = [];
var galixyYPos = [];
var galixy = "🌌";
var galixyTotal = 200;

//Heart
var dolphineXPos = [];
var dolphineYPos = [];
var dolphine = "🐬";
var dolphineTotal = 5;
var dolphineFound = 0;

//Sun
var waveXPos = [];
var waveYPos = [];
var wave = "🌊";
var waveTotal = 200;

setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < dolphineXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, dolphineXPos[i], dolphineYPos[i])<15){
      dolphineXPos.splice(i, 1);
      dolphineYPos.splice(i, 1);
      dolphineFound++;
    }
  }
}

var display = function(){
  background(100,100,100,0);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < dolphineXPos.length; i ++){
    text(dolphine, dolphineXPos[i], dolphineYPos[i]);
  }

  for(var i = 0; i < galixyXPos.length; i ++){
    text(galixy, galixyXPos[i], galixyYPos[i]);
  }
  for(var i = 0; i < waveXPos.length; i ++){
    text(wave,waveXPos[i], waveYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + dolphine + "s   |   " + dolphine + " " + dolphineFound + "/" + dolphineTotal, 0, 425);

  if(dolphineFound == dolphineTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  galixyXPos = [];
  galixyYPos = [];
  dolphineXPos = [];
  dolphineYPos = [];
  dolphineFound = 0;
  waveXPos = [];
  waveYPos = [];


  for(var i = 0; i < galixyTotal; i++){
    galixyXPos.push(random(0,600));
    galixyYPos.push(random(0,400));
  }

  for(var i = 0; i < dolphineTotal; i++){
    dolphineXPos.push(random(0,600));
    dolphineYPos.push(random(0,400));
  }
  for(var i = 0; i < waveTotal; i++){
    waveXPos.push(random(0,600));
    waveYPos.push(random(0,600));
  }
  

}