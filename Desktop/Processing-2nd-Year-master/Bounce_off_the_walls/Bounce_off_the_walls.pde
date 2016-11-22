import processing.sound.*;

SoundFile sfile;

int colourR = (int)random(0,255);
int colourG = (int)random(0,255);
int colourB = (int)random(0,255);
int x = (int)random(100, 1150);
int y = (int)random(100, 700);

int size = 100;
int xdir = 1;
int ydir = 1;

int speed = 10;

int pcolourR = (int)random(0,255);
int pcolourG = (int)random(0,255);
int pcolourB = (int)random(0,255);

void setup()
{
  size(1250,800);
  background(random(0,255), random(0,255), random(0,255));
  sfile = new SoundFile(this, "hey.mp3");
}

void draw()
{
  background(pcolourR, pcolourG, pcolourB);
  
  //xdir and ydir will chance the direction when multiplied by speed, x will be positive
  //if xdir is 1, and vice versa for y and if they are -1
  //1 or -1 determines if the shape is going up down or left or right
  x = x + (speed * xdir);
  y = y + (speed * ydir);
  
  if (x > (width-(size/2)) || x < (size/2)) 
  {
    sfile.play();
    
    pcolourR = (int)random(0,255);
    pcolourG = (int)random(0,255);
    pcolourB = (int)random(0,255);
 
    xdir *= -1;
    
    colourR = (int)random(0,255);
    colourG = (int)random(0,255);
    colourB = (int)random(0,255);
  }
  
  if (y > (height-(size/2)) || y < (size/2)) 
  {
    sfile.play();
    
    pcolourR = (int)random(0,255);
    pcolourG = (int)random(0,255);
    pcolourB = (int)random(0,255);
    
    ydir *= -1;
    
    colourR = (int)random(0,255);
    colourG = (int)random(0,255);
    colourB = (int)random(0,255);
  }
  
  noStroke();
  fill(colourR, colourG, colourB);
  ellipse(x, y, size, size);
}