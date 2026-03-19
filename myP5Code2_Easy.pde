//Stars
var appleXPos = [];
var appleYPos = [];
var apple = "🍎";
var appleTotal = 50;

//Heart
var strawberryXPos = [];
var strawberryYPos = [];
var strawberry = "🍓🍓🍓";
var strawberryTotal = 3;
var strawberryFound = 0;

//Sun
var melonXPos = [];
var melonYPos = [];
var melon = "🍉";
var melonTotal = 50;

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
  for(var i = 0; i < strawberryXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, strawberryXPos[i], strawberryYPos[i])<15){
      strawberryXPos.splice(i, 1);
      strawberryYPos.splice(i, 1);
      strawberryFound++;
    }
  }
}

var display = function(){
  background(100,100,100,0);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < strawberryXPos.length; i ++){
    text(strawberry, strawberryXPos[i], strawberryYPos[i]);
  }

  for(var i = 0; i < appleXPos.length; i ++){
    text(apple, appleXPos[i], appleYPos[i]);
  }
  for(var i = 0; i < melonXPos.length; i ++){
    text(melon,melonXPos[i], melonYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + strawberry + "s   |   " + strawberry + " " + strawberryFound + "/" + strawberryTotal, 0, 425);

  if(strawberryFound == strawberryTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  appleXPos = [];
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