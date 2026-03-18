//Stars
var alienXPos = [];
var alienYPos = [];
var alien = "👽";
var alienTotal = 50;

//Heart
var avoXPos = [];
var avoYPos = [];
var avo = 🥑"";
var avoTotal = 3;
var avoFound = 0;

//Sun
var frogXPos = [];
var frogYPos = [];
var frog = "🐸";
var frogTotal = 50;

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
  for(var i = 0; i < avoXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, avoXPos[i], avoYPos[i])<15){
      avoXPos.splice(i, 1);
      avoYPos.splice(i, 1);
      avoFound++;
    }
  }
}

var display = function(){
  background(100,100,100);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < avoXPos.length; i ++){
    text(avo, avoXPos[i], avoYPos[i]);
  }

  for(var i = 0; i < alienXPos.length; i ++){
    text(alien, alienXPos[i], alienYPos[i]);
  }
  for(var i = 0; i < frogXPos.length; i ++){
    text(frog,frogXPos[i], frogYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + avo + "s   |   " + avo + " " + avoFound + "/" + avoTotal, 0, 425);

  if(avoFound == avoTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  alienXPos = [];
  appleYPos = [];
  strawberryXPos = [];
  strawberryYPos = [];
  strawberryFound = 0;
  melonXPos = [];
  melonYPos = [];


  for(var i = 0; i < appleTotal; i++){
    appleXPos.push(random(0,600));
    appleYPos.push(random(0,400));
  }

  for(var i = 0; i < strawberryTotal; i++){
    strawberryXPos.push(random(0,600));
    strawberryYPos.push(random(0,400));
  }
  for(var i = 0; i < melonTotal; i++){
    melonXPos.push(random(0,600));
    melonYPos.push(random(0,600));
  }
}