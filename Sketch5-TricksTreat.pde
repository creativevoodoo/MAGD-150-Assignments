int spiderX = 730;
int spiderY = 0;
int speed = 1;
int pressed = 0;
int pressedState = 0;
boolean mState = false;

void setup(){
  size(1300,820);
  frameRate(30);
  
}
void draw(){
  if (mState == false){
    runTrick();
  } else{
    runTreat();
  }
  
}

  void mousePressed(){
  mState = !mState;
}

//first Scene with loop
void runTrick(){
  background(31,35,62);
 
  //stars
  strokeWeight(6);
  stroke(252,255,180);
  float a = random(0, width);
  float b = random(0, height);
  point(a,b);
  point(a,b);
  point(a,b);
  point(a,b);
  
  //Moon
  fill(222,221,206);
  ellipse(80,100,100,100);
  
  //grass
  fill(31,54,25);
  strokeWeight(6);
  stroke(19,33,15);
  rect(0,600,width,220);
  
  //picket fence
  fill(124,117,85);
  strokeWeight(6);
  stroke(0);
  rect(0,400,width,50);
  rect(0,600,width,50);
  
  int y = 300;
  int spacing = 70;
  int len = 400;
  
  for (int x = 10; x <= width; x += spacing){
    rect(x,y,50,len,20);
  }
  
  //JackOLatern
  fill(188,116,0);
  stroke(160,99,0);   
  rect(740,590,190,180,100);
  //Pumpkin face
  fill(0,0,0);
  stroke(214,149,43);
  triangle(820,680,760,670,770,640);
  triangle(860,680,920,670,910,640);
  triangle(840,680,820,700,860,700);
  triangle(760,710,780,715,770,740);
  triangle(790,715,810,720,800,740);
  triangle(820,720,840,720,830,740);
  triangle(850,720,870,715,860,740);
  triangle(880,715,900,710,890,740);
  //Trick or Treater's body
  fill(188,116,0);
  stroke(160,99,0);
  rect(500,600,90,150);
  rect(620,600,90,150);
  rect(610,730,110,50,80,80,0,0);
  rect(490,730,110,50,80,80,0,0);
  rect(490,300,230,350,80);
  rect(475,330,40,260,80,0,0,0);
  rect(700,330,40,260,0,80,0,0);
  //Trick or Treater's head
  fill(170,163,127);
  stroke(121,116,90);
  triangle(475,300,600,300,485,340);
  triangle(600,300,490,340,500,370);
  triangle(500,370,600,380,600,300);
  triangle(600,300,590,370,700,370);
  triangle(725,300,600,300,735,340);
  triangle(600,300,735,340,700,370);
  ellipse(600,200,250,230);
  noFill();
  arc(600,200,200,180,0,PI);
  //Button Eyes
  fill(0,0,0);
  strokeWeight(4);
  ellipse(530,175,30,30);
  ellipse(670,175,30,30);
  line(526,171,534,179);
  line(526,179,534,171);
  line(666,171,674,179);
  line(666,179,674,171);
}

void runTreat(){
  background(31,35,62);
  
  //stars
  strokeWeight(6);
  stroke(252,255,180);
  float a = random(0, width);
  float b = random(0, height);
  point(a,b);
  point(a,b);
  point(a,b);
  point(a,b);
  
  //grass
  fill(31,54,25);
  strokeWeight(6);
  stroke(19,33,15);
  rect(0,400,width,420);
    
  //JackOLatern
  fill(188,116,0);
  stroke(160,99,0);   
  rect(740,40,790,750,340);
  
  //Spider crawling
  spiderY = spiderY + speed;
  
  if ((spiderY+45 > height) || (spiderY < 0)){
    speed = speed * -1;
  }
  fill(0);
  strokeWeight(6);
  stroke(80);
  ellipse(spiderX,spiderY,60,90);
  line(spiderX-25,spiderY-30,spiderX-50,spiderY-50);
  line(spiderX-30,spiderY-20,spiderX-60,spiderY-40);
  line(spiderX+30,spiderY-20,spiderX+60,spiderY-40);
  line(spiderX+25,spiderY-30,spiderX+50,spiderY-50);
  line(spiderX-25,spiderY+30,spiderX-50,spiderY+50);
  line(spiderX-30,spiderY+20,spiderX-60,spiderY+40);
  line(spiderX+30,spiderY+20,spiderX+60,spiderY+40);
  line(spiderX+25,spiderY+30,spiderX+50,spiderY+50);
  stroke(100);
  strokeWeight(3);
  line(spiderX,0,spiderX,spiderY-45);
  
  
  //Pumpkin face
  fill(0,0,0);
  strokeWeight(9);
  stroke(214,149,43);
  triangle(840,400,1150,430,860,260);
  triangle(1250,430,1400,400,1390,260);
  //nose
  triangle(1200,450,1100,550,1300,550);
  //mouth
  triangle(840,500,940,550,870,680);
  triangle(960,560,1060,600,980,740);
  triangle(1080,610,1180,620,1100,740);
  triangle(1200,620,1300,610,1250,740);
  
  int textA;
  
  if (pressedState == 1){
    textA = 200;
  } else{
    textA = 0;
  }
  
  noStroke();
  fill(41,30,11,textA);
  text("Happy",85,155);
  text("Halloween",85,325);
  fill(255,158,0,textA);
  textSize(150);
  text("Happy",80,150);
  text("Halloween",80,320);
  
}

void keyPressed() {
  pressed = pressed +1;
  pressedState = (pressed % 2);
}
  
  
