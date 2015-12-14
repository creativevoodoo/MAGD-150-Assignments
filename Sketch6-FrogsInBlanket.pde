int chopX = 480;
int chopY = 460;
int chopSpeed = 3;
float kermitX = 600;
float kermitY = 400;
float xspeed = 5;
float yspeed = 3;
    
int pressed = 0;
int pressedState = 0;
boolean mState = false;

void setup(){
  size(1300,820);
  frameRate(30);
  
}
void draw(){
  if (mState == false){
    swedishChef();
    choppingHand();
    missPiggy();
  } else{
    boilingWater();
    veggiesStew();
    kermitHead();
    bubbles();
    
  }
  
}

  void mousePressed(){
  mState = !mState;
}

//first Scene with loop
void swedishChef(){
  background(241,255,222);
  rectMode(CORNER);
  //Wallpaper
  fill(189,255,98);
  strokeWeight(3);
  stroke(98,255,99);
  
  int y = 0;
  int spacing = 90;
  int len = height;
  
  for (int x = 0; x <= width; x += spacing){
    rect(x,y,40,len);
  }
  
  //Cabinets
  fill(0,0,0,150);
  noStroke();
  rect(690,0,640,320);
  fill(211,162,0);
  strokeWeight(6);
  stroke(170,131,0);
  rect(700,0,600,300);
  rect(720,20,200,260);
  rect(750,50,140,200);
  rect(940,20,200,260);
  rect(970,50,140,200);
  rect(1160,20,200,260);
  rect(1190,50,140,200);
  
  //Cabinet Knobs
  fill(150);
  stroke(130);
  ellipse(905,150,20,20);
  ellipse(1125,150,20,20);
  
  //Swedish Chef's body
  fill(219,247,255);
  stroke(0,0,0);
  rect(260,390,280,350,80);
  
  //Bow Tie
  fill(255,38,0);
  triangle(400,440,340,410,350,460);
  triangle(400,440,460,410,450,460);
  rect(380,420,40,40,30);
 
  //Apron
  fill(255,255,255);
  rect(310,390,20,80);
  rect(470,390,20,80);
  rect(310,470,180,230);
  
  
  //Swedish Chef's head
  fill(255,228,196);
  stroke(0,0,0);
  ellipse(300,300,60,80);
  ellipse(500,300,60,80);
  rect(300,200,200,220,100);
  fill(0,0,0);
  ellipse(400,340,70,40);
  
   //Chef's Hat
  fill(255,255,255);
  rect(320,120,160,110);
  ellipse(320,120,120,80);
  ellipse(480,120,120,80);
  ellipse(400,120,120,80);
  
  //Mustache and brows
  fill(173,112,51);
  beginShape();
  vertex(320,230);
  vertex(300,290);
  vertex(280,280);
  vertex(290,265);
  vertex(280,255);
  vertex(290,250);
  vertex(275,240);
  endShape(CLOSE);
  beginShape();
  vertex(480,230);
  vertex(500,290);
  vertex(520,280);
  vertex(510,265);
  vertex(520,255);
  vertex(510,250);
  vertex(525,240);
  endShape(CLOSE);
  beginShape();
  vertex(400,240);
  vertex(490,260);
  vertex(490,255);
  vertex(500,250);
  vertex(490,240);
  vertex(500,230);
  vertex(510,225);
  vertex(490,220);
  vertex(440,230);
  vertex(400,230);
  vertex(360,230);
  vertex(320,220);
  vertex(290,225);
  vertex(300,230);
  vertex(290,240);
  vertex(310,250);
  vertex(295,255);
  vertex(310,260);
  endShape(CLOSE);
  beginShape();
  vertex(400,330);
  vertex(490,350);
  vertex(490,345);
  vertex(500,340);
  vertex(490,330);
  vertex(500,320);
  vertex(510,315);
  vertex(490,310);
  vertex(440,320);
  vertex(400,320);
  vertex(360,320);
  vertex(320,310);
  vertex(290,315);
  vertex(300,320);
  vertex(290,330);
  vertex(310,340);
  vertex(295,345);
  vertex(310,350);
  endShape(CLOSE);
  
  //Nose
  fill(255,192,160);
  ellipse(400,280,60,80);
  
  noFill();
  arc(400,360,90,40,0,PI);
  
  //counter and top
  fill(211,162,0);
  strokeWeight(6);
  stroke(170,131,0);
  rect(0,600,width,220);
  fill(0,0,0,150);
  noStroke();
  rect(0,620,width,50);
  fill(105,167,115);
  stroke(0,0,0);
  rect(0,600,width,50);
  noFill();
  strokeWeight(9);
  arc(130,595,150,20,radians(180),radians(360));
  line(130,590,130,595);
  
  //Pot of Water
  fill(190);
  strokeWeight(6);
  stroke(0,0,0);
  rect(30,420,200,10,10);
  rect(45,390,170,190,0,0,20,20);
  rect(40,380,180,10,10);
}
//Swedish Chef's hand chopping frog legs
void choppingHand(){
  chopY = chopY + chopSpeed;
  if (pressedState == 1){
  if ((chopY > 460) || (chopY < 410)){
    chopSpeed = chopSpeed * -1;
  }
  }else{
    chopY = 460;
  }
  fill(219,247,255);
  ellipse(chopX+50,chopY+60,100,100);
  fill(255,228,196);
  stroke(0,0,0);
  rect(chopX,chopY,100,80,80);
  rect(chopX+10,chopY+80,40,20,10);
  fill(190);
  rect(chopX-150,chopY+20,150,100);
  fill(252,227,171);
  rect(250,580,300,20);
  fill(255,51,0);
  stroke(107,232,0);
  ellipse(410,556,60,40);
  fill(255,255,255);
  strokeWeight(3);
  stroke(0,0,0);
  ellipse(410,556,10,10);
} 

//Prepared Miss Piggy ready for the oven
void missPiggy(){
  fill(219,0,0);
  strokeWeight(6);
  ellipse(740,530,30,30);
  fill(255);
  stroke(0,0,0);
  rect(700,580,500,20);
  fill(255,208,170);
  rect(880,380,300,200,180,180,0,0);
  rect(710,460,70,60,20);
  quad(740,550,780,520,800,530,760,560);
  rect(750,400,150,150,140);
  triangle(830,410,870,430,850,360);
  rect(800,550,140,30,40,0,0,0);
  rect(1000,550,180,30,40,0,0,0);
  fill(255,175,246);
  ellipse(790,460,40,30);
  noFill();
  arc(790,455,40,20,0,radians(180));
}
//Second Scene of close up of boiling water in pot
void boilingWater(){
  background(190);
} 

//Random shapes to be veggies in the frog stew
void veggiesStew(){
    int carX, carY, onX, onY, vegT, vegW;
    carX = 600;
    carY = 650;
    onX = 800;
    onY = 700;
    vegT = 300;
    vegW = 300;
    carX = round(random(width));
    carY = round(random(height));
    onX = round(random(width));
    onY = round(random(height));
    fill(255,226,0);
    strokeWeight(6);
    stroke(165,150,37);
    ellipse(onX, onY, vegT, vegW);
    fill(255,158,0);
    strokeWeight(6);
    stroke(160,114,39);
    rect(carX, carY, vegT, vegW,100);
}

//Dead Kermit head floating in the pot of water
void kermitHead(){
    
    kermitX = kermitX + xspeed;
    kermitY = kermitY + yspeed;
  
  if ((kermitX > width ) || (kermitX < 0)){
    xspeed = xspeed * -1;
  }
  if ((kermitY > height ) || (kermitY < 0)){
    yspeed = yspeed * -1;
  }
  fill(107,232,0);
  stroke(77,137,26);
  ellipse(kermitX,kermitY,600,400);
  fill(255);
  ellipse(kermitX-100,kermitY-150,150,150);
  ellipse(kermitX+100,kermitY-150,150,150);
  noFill();
  strokeWeight(12);
  arc(kermitX,kermitY+50,500,150,0,radians(180));
  line(kermitX-140,kermitY-180,kermitX-80,kermitY-120);
  line(kermitX-80,kermitY-180,kermitX-140,kermitY-120);
  line(kermitX+140,kermitY-180,kermitX+80,kermitY-120);
  line(kermitX+80,kermitY-180,kermitX+140,kermitY-120);
  
}

//boiling water bubbles
void bubbles(){
   fill(0,176,255,100);
   noStroke();
   rect(0,0,width,height);
   int posX, posY, sizeX, sizeY;
   posX = 400;
   posY = 450;
   sizeX = 200;
   sizeY = 200;
   posX = round(random(width));
   posY = round(random(height));
   //sizeX = round(random(0.5,400));
   //sizeY = round(random(0.5,400));
   fill(139,219,255,140);
   strokeWeight(6);
   stroke(104,175,206,230);
   
   ellipse(posX, posY, sizeX, sizeY);

}

void keyPressed() {
  pressed = pressed +1;
  pressedState = (pressed % 2);
}
  
  
