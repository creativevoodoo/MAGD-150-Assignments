void setup(){
  size(1300,820);
  frameRate(30);
}
void draw(){
  //lightning effect
   if (keyPressed==true){
    background(255,253,196);
  } else{
    background(9,13,82);
  }
  //Setting
  //Moon Rays
  fill(23,0,77,230);
  noStroke();
  triangle(100,120,1400,700,1200,820);
  triangle(100,120,1300,300,1300,500);
  triangle(100,120,1200,-200,1400,100); 
  triangle(100,120,900,820,500,820);
  triangle(100,120,300,820,100,820);
  triangle(100,120,0,600,0,200);
  triangle(100,120,0,120,0,20);
  triangle(100,120,60,0,140,0);
  triangle(100,120,240,0,340,0);
  //Moon
  fill(247,247,242);
  strokeWeight(6);
  stroke(0,0,0);
  ellipse(100,120,100,100);
  //Landscape
  fill(31,26,25);
  beginShape();
  vertex(0,600);
  vertex(100,600);
  vertex(100,700); 
  vertex(200,550);
  vertex(300,700);
  vertex(500,700);
  vertex(700,420);
  vertex(700,600);
  vertex(900,600);
  vertex(900,700);
  vertex(1300,700);
  vertex(1300,820);
  vertex(0,820);
  endShape(CLOSE);
  //Zombie Neck
  fill(170,193,183);
  strokeWeight(6);
  stroke(0,0,0);
  rect(475,620,200,190);
  //Neck Shadow
  fill(0,0,0,200);
  noStroke();
  rect(475,620,200,60,0,0,100,100);
  //Zombie ears
  fill(170,193,183);
  strokeWeight(6);
  stroke(0,0,0);
  ellipse(380,340,100,150);
  ellipse(770,360,100,150);
  //Zombie Head
  fill(170,193,183);
  strokeWeight(6);
  stroke(0,0,0);
  rect(400,40,350,600,100,100,160,160);
  noFill();
  arc(420,100,300,80,PI+QUARTER_PI,TWO_PI);
  arc(480,90,300,80,PI,TWO_PI);
  arc(440,80,300,80,PI+QUARTER_PI,TWO_PI);
  point(700,180);
  point(650,220);
  point(690,240);
  //Brow shadow
  fill(0,0,0,100);
  noStroke();
  beginShape();
  vertex(440,260);
  vertex(555,260);
  vertex(565,240);
  vertex(575,260);
  vertex(585,240);
  vertex(595,260);
  vertex(710,260);
  vertex(730,360);
  vertex(595,340);
  vertex(585,300);
  vertex(565,300);
  vertex(555,340);
  vertex(420,360);
  endShape(CLOSE);
  //sunken cheeks
  triangle(420,390,510,420,420,520);
  triangle(730,390,640,420,730,520);
  //Nose
  fill(0,0,0);
  triangle(570,380,570,430,550,430);
  triangle(580,375,600,435,580,430);
  //cheek lines
  noFill();
  strokeWeight(6);
  stroke(0,0,0);
  line(540,440,490,480);
  line(490,480,470,580);
  line(610,440,660,480);
  line(660,480,680,580);
  //Zombie mouth
  fill(0,0,0);
  rect(505,470,140,70,140,120,0,0);
  //Teeth
  fill(242,255,191);
  rect(580,490,20,30);
  rect(600,485,20,30);
  rect(620,490,20,30);
  //Bottom Lip
  fill(170,193,183);
  strokeWeight(6);
  stroke(0,0,0);
  rect(490,510,180,50,100);
  //Eye Sockets
  ellipse(500,310,100,70);
  ellipse(650,310,100,70);
  fill(0,0,0);
  ellipse(500,305,90,50);
  ellipse(650,305,90,50);
  //Optic Nerves
  fill(165,150,159);
  noStroke();
  //left Nerve
  beginShape();
  vertex(470,310);
  vertex(490,290);
  vertex(mouseX,mouseY);
  vertex(520,320);
  vertex(500,320);
  vertex(490,320);
  endShape(CLOSE);
  //Right Nerve
  beginShape();
  vertex(650,290);
  vertex(680,290);
  vertex(pmouseX+100,pmouseY+60);
  vertex(670,320);
  vertex(650,320);
  vertex(620,310);
  endShape(CLOSE);
  //The Eyes
  //Left Eye drop shadow
  fill(0,0,0,100);
  ellipse(mouseX+20,mouseY+20,100,90);
  //Left Eyeball
  fill(255,255,155);
  strokeWeight(6);
  ellipse(mouseX,mouseY,100,90);
  fill(180);
  ellipse(mouseX-10,mouseY-10,50,50);   
  fill(0,0,0);
  ellipse(mouseX-10,mouseY-10,30,30);
  //Right Eye drop shadow
  fill(0,0,0,100);
  noStroke();
  ellipse(pmouseX+140,pmouseY+60,100,90);
  //Right Eyeball
  fill(255,255,155);
  strokeWeight(6);
  stroke(0,0,0);
  ellipse(pmouseX+120,pmouseY+40,100,90);
  fill(180);
  ellipse(pmouseX+135,pmouseY+45,50,50);
  fill(0,0,0);
  ellipse(pmouseX+135,pmouseY+45,30,30);
  //Left Eye
  fill(255,255,155);
  strokeWeight(6);
  ellipse(mouseX,mouseY,100,90);
  fill(180);
  ellipse(mouseX-10,mouseY-10,50,50);
  fill(0,0,0);
  ellipse(mouseX-10,mouseY-10,30,30);
  //Theater seats
  fill(0,0,0);
  strokeWeight(1);
  stroke(0,0,0);
  ellipse(65,780,80,100);
  ellipse(200,750,60,100);
  ellipse(490,770,50,100);
  ellipse(560,780,80,100);
  strokeWeight(6);
  stroke(0,0,0);
  // Click within the image to reveal Zombie 
  // the value of the head changes
  if (mousePressed == true) {
    fill(170,193,183);
  } else {
    fill(0,0,0);
  }
  rect(840,700,60,80,40,40,20,20);
  //Zombie Eyes and shadow
  fill(0,0,0,100);
  noStroke();
  quad(848,730,892,725,895,745,845,745);
  fill(0,0,0);
  strokeWeight(1);
  ellipse(860,740,20,15);
  ellipse(885,735,20,15);
  strokeWeight(3);
  stroke(0);
  line(850,720,870,725);
  line(870,725,890,718);
  //Seats in Theater
  rect(0,750,130,70,20,20,0,0);
  rect(135,750,130,70,20,20,0,0);
  rect(270,750,130,70,20,20,0,0);
  rect(405,750,130,70,20,20,0,0);
  rect(540,750,130,70,20,20,0,0);
  rect(675,750,130,70,20,20,0,0);
  rect(810,750,130,70,20,20,0,0);
  rect(945,750,130,70,20,20,0,0);
  rect(1080,750,130,70,20,20,0,0);
  rect(1215,750,130,70,20,20,0,0);
  
}
