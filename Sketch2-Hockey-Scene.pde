void setup(){
  size(1300,850);
  frameRate(30);
}

void draw(){
  background(231,230,242);
  //Red Goal Line
  noFill();
  strokeWeight(5);
  stroke(255,11,3);
  line(200,0,200,850);
  //Faceoff Circles
  arc(800,0,500,500,0,PI);
  ellipse(820,860,500,500);
  fill(255,11,3);
  ellipse(820,860,100,100);
  ellipse(800,0,100,100);
  //Faceoff lines
  line(760,250,760,300);
  line(850,250,850,300);
  line(760,565,760,615);
  line(850,565,850,610);
  //Goalie Crease
  fill(124,188,255);
  rect(200,260,250,350,0,200,200,0);
  //light reflections on the ice
  fill(255,255,255,120);
  noStroke();
  triangle(80,140,160,40,1280,300);
  triangle(80,710,160,810,1280,510);
  beginShape();
  vertex(200,280);
  vertex(1320,60);
  vertex(1290,800);
  vertex(200,600);
  endShape(CLOSE);
  ellipse(1080,100,480,480);
  ellipse(1080,750,480,480);
  ellipse(180,100,480,480);
  ellipse(180,750,480,480);
  //Goalie Net
  fill(255,255,255);
  strokeWeight(2);
  stroke(0,0,0);
  rect(51,280,150,310,160,0,0,160);
  fill(231,230,242);
  noStroke();
  rect(61,290,130,290,140,0,0,140);
  noFill();
  strokeWeight(10);
  stroke(255,255,255);
  arc(195,435,150,295,HALF_PI,PI+HALF_PI);
  stroke(0,0,0,60);
  point(195,286);
  point(195,584);
  //Hockey Player
  translate(mouseX,mouseY);
  //Hockey Stick
  noFill();
  strokeWeight(6);
  stroke(100);
  line(35,30,0,240);
  line(0,240,-20,280);
  //Glove
  fill(0,0,0);
  strokeWeight(2);
  stroke(0,0,0);
  ellipse(35,25,25,20);
  fill(234,168,0);
  ellipse(37,25,20,15);
  //Lower Sleeve
  fill(234,12,0);
  beginShape();
  vertex(63,5);
  vertex(70,5);
  vertex(80,10);
  vertex(65,60);
  vertex(40,35);
  vertex(35,30);
  vertex(30,22);
  vertex(35,15);
  endShape(CLOSE);
  //Jersey top
  fill(255,255,255);
  beginShape();
  vertex(65,5);
  vertex(75,10);
  vertex(80,20);
  vertex(78,23);
  vertex(68,40);
  vertex(74,45);
  vertex(78,60);
  vertex(80,80);
  vertex(80,110);
  vertex(70,130);
  vertex(68,140);
  vertex(55,148);
  vertex(44,143);
  vertex(35,130);
  vertex(28,125);
  vertex(15,65);
  vertex(35,30);
  endShape(CLOSE);
  //Jersey Details
  fill(0,0,0);
  stroke(234,12,0);
  beginShape();
  vertex(28,125);
  vertex(35,130);
  vertex(65,128);
  vertex(68,70);
  vertex(65,60);
  vertex(70,50);
  vertex(65,35);
  vertex(55,33);
  vertex(40,40);
  vertex(32,55);
  endShape(CLOSE);
  ellipse(45,90,25,35);
  //Helmet
  fill(255,255,255);
  stroke(0,0,0);
  ellipse(30,90,50,40);
  stroke(100);
  line(20,80,30,80);
  line(20,100,30,100);
  point(35,80);
  point(40,80);
  point(35,100);
  point(40,100);
  //Puck
  fill(0,0,0);
  ellipse(-20,240,20,20);

}
