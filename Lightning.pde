int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300,300);
  strokeWeight(10);
  background(420);
  noLoop();
}
void draw()
{
  stroke((int)(Math.random() * 500));
  int x = (int)(Math.random() * 100);
  ellipse(x,150,10,10);
  while (endX <= 150) {
    endX = startX + (int)(Math.random() * 100);
    endY = startY + (int)(Math.random() * 100);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  redraw();
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
