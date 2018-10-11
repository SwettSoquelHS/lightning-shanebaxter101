void setup()
{
  size(800,500);
  strokeWeight(3);
  background(21, 33, 39);
}

int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
  
void draw()
{
  double randColor = Math.random();
  if(randColor < 0.5){
    stroke(240, 233, 19);
  } 
  else {
    stroke(19, 216, 240);
  }
  while(endX <= 800){ 
    endX = startX + int(random(0, 9));
    endY = startY + int(random(-9,9));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
 startX = 0;
 startY = 150;
 endX = 0;
 endY = 150;
}
