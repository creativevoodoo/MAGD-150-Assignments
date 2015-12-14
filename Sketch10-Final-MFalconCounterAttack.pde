PImage fal;
PImage fight;
PImage darth;

float moonX = 1360;
float moonY = 205;
float moonSpeed = -.3;

MillFalcon myMillFalcon;
Timer myTimer;
TieFighter[] tiefighters;
int numberTieFighters;

boolean hit = false;


int pressed = 0;
int pressedState = 0;
boolean mState = false;

void setup(){
  size(1300,800);
  fal = loadImage("millennium-falconSideView2.png");
  fight = loadImage("SWGameStartBKGRD.jpg");
  darth = loadImage("DarthBkGrd.jpg");
 
  myMillFalcon = new MillFalcon();
  
  tiefighters = new TieFighter[100];
  for(int x = 0; x < tiefighters.length-1; x++){
    tiefighters[x] = new TieFighter();
  }
  //myTimer = new Timer(10000);
  myTimer = new Timer(round(random(2000,5000)));     // set timer to randomly bring tie 
  myTimer.timerStart();                              //  fighters on between 2-5 seconds
  
  frameRate(30);
  
}
void draw(){
  if (mState == false){
    GameStart();
    
  } else{
    FalconFight();
//timer for tie fighters to come on screen
    if (myTimer.isFinished()){
      numberTieFighters++;
      myTimer.timerStart();
  }
  
   
    if (numberTieFighters == tiefighters.length-1){
      numberTieFighters = 0;
    }
    for (int newTieFighters = numberTieFighters; newTieFighters > 0; newTieFighters --){
      tiefighters[newTieFighters].move();
      tiefighters[newTieFighters].display();
      
      if (myMillFalcon.intersect( tiefighters[newTieFighters])){
        //println("collision!" + newTieFighters);
        hit = true;
       }
    }
    myMillFalcon.update();
    //myMillFalcon.laser();
    myMillFalcon.display();
   
     if(hit){
       YouLose();
     }
  }
}

  void mousePressed(){
  mState = !mState;
}

//Start of the Game
void GameStart(){
  image(fight,0,0);
 
}


//Actual Game
void FalconFight(){
  background(93,229,255);
  int x = 650;
  int spacing = 90;
  int wid = width;
  noStroke();
  fill(90,222,247);
  for (int y = 0; y <= width; y += spacing){
    rect(x,y,wid,60);
  }
  //Moon moving across the sky
  fill(208,219,164);
  strokeWeight(3);
  stroke(164,173,129);
  
  moonX = moonX + moonSpeed;
  
  ellipse(moonX,moonY,150,150);
  fill(244,255,201);
  ellipse(moonX,moonY,130,130);
  
  //Landscape for background
  stroke(165,142,93);
  strokeWeight(3);
  
  fill(234,200,125);
  beginShape();
  vertex(0,400);
  vertex(100,380);
  vertex(150,480); 
  vertex(200,460);
  vertex(300,400);
  vertex(500,440);
  vertex(700,480);
  vertex(740,490);
  vertex(900,460);
  vertex(980,420);
  vertex(1100,450);
  vertex(1300,480);
  vertex(1300,820);
  vertex(0,820);
  endShape(CLOSE);
  rect(650,650,1300,300);
  
} 

void YouLose(){
  image(darth,0,0);
}

void keyPressed(){
  myMillFalcon.keyPressed(); // the global keyPressed function calls the Movement class keyPressed method.  
}

void keyReleased(){
  myMillFalcon.keyReleased(); // the global keyReleased function calls the Movement class keyReleased method.
}

class MillFalcon{
  int centerX,centerY,offset1,offset2,offsetX1,offsetX2,beamX,beamY,beamSpeed;
  boolean keys[];    // In this array, the index corresponds with W,S,A,D.
  
  int xVelocity, yVelocity;
  int pressed = 0;
  int pressedState = 0;
  boolean mState = false;
  
  // constructor
  MillFalcon(){
    centerX = 300;
    centerY = round(random(0, height));
    offset1 = -20;
    offset2 = +20;
    offsetX1 = -20;
    offsetX2 = + 20;
    beamX+= centerX+=xVelocity;
    beamY+=centerY+=yVelocity;
    beamSpeed=10;
    
    keys = new boolean [4];
  }
  
  // creates the Millenium Falcon.
  void display(){   
    rectMode(CENTER);
    image(fal,centerX,centerY);  
  }
  
  
  //Collision of tie fighter into Falcon
    boolean intersect(TieFighter d){
      println(dist(centerX, centerY, d.tieX, d.tieY));
    if(dist(centerX, centerY, d.tieX, d.tieY) <150){
      println("centerX: " + centerX + ", centerY: " + centerY + ", tieX: " + d.tieX + ", tieY: " + d.tieY);
      return true;
    } else{
      return false;
    }
    
 
  //boolean intersect(TieFighter d){
  //  if((centerX == d.tieX)&&(centerY==d.tieY)){
  //    println("centerX: " + centerX + ", centerY: " + centerY + ", tieX: " + d.tieX + ", tieY: " + d.tieY);
  //    return true;
  //  } else{
  //    return false;
  //  }
    
  }
  
  void update(){
    if (keys[0]){
      yVelocity = -5;
    }
    if(keys[1]){
      yVelocity = 5;
    }
    if(keys[2]){
      xVelocity = -5;
    }
    if(keys[3]){
      xVelocity = 5;
    }
    if(!keys[2] && !keys[3]){ // if both Left and Right are released, horizontal velocity should be zero.
      xVelocity = 0;
      //println("no left or right");
    }
    if(!keys[0] && !keys[1]){ // if both Up and Down are released, vertical velocity should be zero.
      yVelocity = 0;
      //println("no left or right");
    }
    centerX += xVelocity;
    centerY += yVelocity;
  }
  
 
  void keyPressed(){
    if(key == 'w'){
      keys[0] = true;
    } 
    if(key == 's'){
      keys[1] = true;
    }
    if(key == 'a'){
      keys[2] = true;
    }
    if(key == 'd'){
      keys[3] = true;
    } 
  }
  
  void keyReleased(){ // the 
    println("Keyreleased " + key);
    if(key == 'w'){
      keys[0] = false;
    } 
    if(key == 's'){
      keys[1] = false;
    }
    if(key == 'a'){
      keys[2] = false;
    }
    if(key == 'd'){
      keys[3] = false;
    } 
  }   
}

class TieFighter{
  int tieX,tieY,tieSpeedX,tieSpeedY;
  
  TieFighter(){
    tieX=1300;
    tieY=round(random(0,height));
    tieSpeedX=5;
    tieSpeedY=round(random(1,10));
    
  }
void display(){
  
  rectMode(CENTER);
  fill(200);
  stroke(0);
  strokeWeight(1);
  
  ellipse(tieX,tieY,20,20);
  beginShape();
  vertex(tieX-10,tieY-20);
  vertex(tieX+10,tieY-20);
  vertex(tieX+20,tieY);
  vertex(tieX+10,tieY+20);
  vertex(tieX-10,tieY+20);
  vertex(tieX-20,tieY);
  endShape(CLOSE);
  
  fill(0);
  beginShape();
  vertex(tieX-6,tieY-16);
  vertex(tieX+6,tieY-16);
  vertex(tieX+16,tieY);
  vertex(tieX+6,tieY+16);
  vertex(tieX-6,tieY+16);
  vertex(tieX-16,tieY);
  endShape(CLOSE);
  fill(200);
  ellipse(tieX,tieY,10,10);
  
}

void move(){
  tieX = tieX + tieSpeedX;
  tieY = tieY + tieSpeedY;
  
  if ((tieX > width) || (tieX < 0)){
    tieSpeedX = tieSpeedX * -1;
  }
 if ((tieY > height ) || (tieY < 0)){
    tieSpeedY = tieSpeedY * -1;
 }
 }
 
 
  
}

class Timer{ //timer for game. Randomly drops tie fighters into game
  float startTime, stopTime; 
   boolean started = false;   
  
  
  Timer(float _stopTime){
    stopTime = _stopTime;
  }
  
  
  void timerStart(){
    startTime = millis();
    started = true;
  }
  
  void stopTimer(){
    started = false;
    println("time stopped");
  }
  
  
  boolean isFinished(){
    float passedTime = millis() - startTime;
    if((passedTime > stopTime) && (started)) {
      return true;
    } else {
      return false;
    }
  }
}
