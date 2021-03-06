void setup(){
  
 size(550,320);
 background(0,0,0);
 //pacman and dots
 fill(254,255,0);
 stroke(254,255,0);
 //dots
 ellipse(150,160,20,20);
 ellipse(220,160,20,20);
 ellipse(290,160,20,20);
 ellipse(360,160,20,20);
 ellipse(430,160,20,20);
 ellipse(500,160,20,20);
 ellipse(500,230,20,20);
 ellipse(500,300,20,20);
 ellipse(360,90,20,20);
 ellipse(360,20,20,20);
 //pacman
 ellipseMode(CORNER);
 ellipse(20,110,100,100);
 fill(0,0,0);
 stroke(0,0,0);
 triangle(60,160,130,110,130,180);
 //blue outline walls
 noFill();
 strokeWeight(20);
 stroke(7,0,255);
 //top wall
 rectMode(CENTER);
 rect(220,1,100,150,4);
 //right wall
 rectMode(CORNER);
 rect(450,-18,200,100,4);
 //bottom wall
 rectMode(CENTER);
 rect(180,290,500,100,4);
 //Ghost
 fill(7,0,255);
 strokeWeight(1);
 stroke(7,0,255);
 rectMode(CORNER);
 rect(315,110,90,105,50,50,0,0);
 //eyes
 fill(255,255,255);
 stroke(255,255,255);
 ellipse(322,130,35,35);
 ellipse(362,130,35,35);
 strokeWeight(4);
 noFill();
 stroke(0,0,0);
 point(330,145);
 point(370,145);
 //mouth
 noFill();
 stroke(255,255,255);
 line(325,185,342,175);
 line(342,175,359,185);
 line(359,185,376,175);
 line(376,175,393,185);
 fill(0,0,0);
 strokeWeight(1);
 stroke(0,0,0);
 triangle(315,215,330,200,345,215);
 triangle(345,215,360,200,375,215);
 triangle(375,215,390,200,405,215);
 
 
}
