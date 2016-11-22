void setup()
{
  size(500, 500);
  background(0);
}

void Star()
{
  float op = 200;
  stroke(random(0,255), random(0,255), random(0,255));
  float x, y;
  float radius = random(20,400);
  float cx = 250;
  float cy = 250;
  float points = int(random(5,9));
  float thetaInc = TWO_PI / (points * 2);
  float px = cx, py = cy - radius;
  
  for(float p = 1 ; p <= (points * 2); p ++)
  {
    float r = radius;
    if (p % 2 == 1)
    {
      r /= 2;
    }
    
    float theta = p * thetaInc;
    x = cx + sin(theta) * r;
    y = cy - cos(theta) * r;
    line(px, py, x, y);
    px = x;
    py = y;
  }
}
  

void draw()
{
    Star();
}