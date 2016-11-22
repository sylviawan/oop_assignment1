void setup()
{
 background(0); 
 size(500,500);
 frameRate(2);
 a=50;
 b=100;
}
  float x;
  float y;
  float a;
  float b;
void draw()
{
  stroke(random(255), random(255), random(255));
  x = random(500);
  y = random(500);
  line(x,y,x+a/2,y-a);
  line(x+a,y,x+a/2,y-a);
  line(x+a,y,x+b,y+a/2);
  line(x+a,y+a,x+b,y+a/2);
  line(x,y+a,x+a/2,y+b);
  line(x+a,y+a,x+a/2,y+b);
  line(x,y,x-a,y+a/2);
  line(x,y+a,x-a,y+a/2);
}