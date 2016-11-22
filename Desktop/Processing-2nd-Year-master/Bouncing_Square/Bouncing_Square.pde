int xdir = 1;
int ydir = 1;

int size = 50;

int speed = 10;

void setup()
{
  size(500, 500);
  background(255, 0, 0);
}

int x = width;
int y = height*2;

void draw()
{
  background(255, 0, 0);
  
  x = x + (speed * xdir);
  y = y + (speed * ydir);
  
  if (x > (width-(size)) || x < (size/4)) 
  {
     xdir *= -1;
  }
  
  if (y > (height-(size)) || y < (size/4)) 
  {
    ydir *= -1;
  } 
  
  noStroke();
  fill(0, 255, 0);
  rect(x, y, 50, 50);
}