void setup()
{
  size(1000,700);
  strokeWeight(3);
  background(21, 33, 39);
}

  
void draw()
{
 
}

void lightning(){
  translate(0, 0);
  int x1 = int(random(100, 800));
  int x2 = int(random(200, 700));
  int x3 = int(random(x2 - 200, x2 + 200));
  int x4 = int(x2 + random(0, 100));
  int add1 = int(random(0, 300));
  int add2 = int(random(0, 300));
  int add3 = int(random(-100, 100));
  stroke(237, 255, 0, 90);
  strokeWeight(10);
  line(x1 , 0, x2, 200);
  line(x2, 200, x3, 400);
  line(x2, 200, x4, 300);
  line(x3, 400, x3 + add1, 500);
  line(x4, 300, x4 + add2, 450);
  line(x4, 300, x4 + add3, 470);
  stroke(10, 250, 232);
  strokeWeight(3);
  line(x1 , 0, x2, 200);
  line(x2, 200, x3, 400);
  line(x2, 200, x4, 300);
  line(x3, 400, x3 + add1, 500);
  line(x4, 300, x4 + add2, 450);
  line(x4, 300, x4 + add3, 470);
}
int y = 0;
void mousePressed()
{
 y = y + 1;
 if(y % 2 == 0){
   background(21, 33, 39);
 } else {
   background(237, 255, 0);
 }
 
 hills(width/2 + 200, height/2, 2, 6, 75);
 hills(200, height/2, 11, 16, 106);
 hills(1200, height/2, 16, 21, 113);
 lightning();
 clouds();

}

void hills(int w, int l, int r, int g, int b){
  pushMatrix();
  translate(w, l);
  fill(r, g, b);
  stroke(7, 6, 31);  
  strokeWeight(3);
  beginShape();
  vertex(-200, 0);
  vertex(-180, 15);
  vertex(-160, 32);
  vertex(-140, 43);
  vertex(-120, 64);
  vertex(-100, 75);
  vertex(-80, 88);
  vertex(-60, 107);
  vertex(-30, 118);
  vertex(-29, 122);
  vertex(-25, 137);
  vertex(-20, 150);
  vertex(-5, 167);
  vertex(10, 180);
  vertex(45, 185);
  vertex(60, 200);
  vertex(80, 215);
  vertex(95, 230);
  vertex(100, 240);
  vertex(120, 255);
  vertex(140, 270);
  vertex(150, 285);
  vertex(170, 305);
  vertex(185, 325);
  vertex(205, 340);
  vertex(225, 350);
  vertex(-625, 350);
  vertex(-610, 343);
  vertex(-600, 315);
  vertex(-570, 300);
  vertex(-550, 285);
  vertex(-520, 235);
  vertex(-500, 215);
  vertex(-480, 200);
  vertex(-457, 188);
  vertex(-426, 163);
  vertex(-400, 135);
  vertex(-384, 120);
  vertex(-360, 105);
  vertex(-340, 85);
  vertex(-330, 60);
  vertex(-314, 45);
  vertex(-295, 30);
  vertex(-265, 15);
  vertex(-240, 5);
  vertex(-200, 0);
  endShape();
  popMatrix();
}

void clouds(){
  stroke(7,6,31);
  strokeWeight(1);
  for(int y = 0; y < 4; y ++){
    for(int i = 50; i < 1000; i += 63){
      fill(random(25, 40), random(20, 58), 80);
      ellipse(i, random(0, 35), 200, 60);
    }
  }
}
