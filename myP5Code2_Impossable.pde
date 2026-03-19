//Stars
var starXPos = [];
var starYPos = [];
var star = "⭐️";
var starTotal = 500;

//Heart
var heartXPos = [];
var heartYPos = [];
var heart = "💛";
var heartTotal = 5;
var heartFound = 0;

//Sun
var sunXPos = [];
var sunYPos = [];
var sun = "☀️";
var sunTotal = 500;

setup = function() {
   size(600, 450); 
    frameRate(3)
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
  for(var i = 0; i < heartXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, heartXPos[i], heartYPos[i])<15){
      heartXPos.splice(i, 1);
      heartYPos.splice(i, 1);
      heartFound++;
    }
  }
}

var display = function(){
  background(100,100,100,0);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < heartXPos.length; i ++){
    text(heart, heartXPos[i] + random(-100,100), heartYPos[i] + random(-100,100));
  }

  for(var i = 0; i < starXPos.length; i ++){
    text(star, starXPos[i] + random(-100,100), starYPos[i] + random(-100,100));
  }
  for(var i = 0; i < sunXPos.length; i ++){
    text(sun,starXPos[i] + random(-100,100), sunYPos[i] + random(-100,100));
  }


  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + heart + "s   |   " + heart + " " + heartFound + "/" + heartTotal, 0, 425);

  if(heartFound == heartTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  starXPos = [];
  starYPos = [];
  heartXPos = [];
  heartYPos = [];
  heartFound = 0;


  for(var i = 0; i < starTotal; i++){
    starXPos.push(random(0,600));
    starYPos.push(random(0,400));
  }

  for(var i = 0; i < heartTotal; i++){
    heartXPos.push(random(0,600));
    heartYPos.push(random(0,400));
  }
  for(var i = 0; i < sunTotal; i++){
    sunXPos.push(random(0,600));
    sunYPos.push(random(0,600));
  }
}