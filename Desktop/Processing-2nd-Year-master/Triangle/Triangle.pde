void setup()
{
  size(500,500);
  background(0);
}

void draw()
{
  float x = 250;
  float y = 250;
  
  float O;
  float A;
  float H;
  
  H = 176.0;
  
  A = cos(radians(27))*H;
 
  O = tan(radians(27))*A;
  
  stroke(255);
  //triangle(x-H, y-H, x-H, y, x, y);
  
  line(x, y, x-A, y-O);
  line(x, y, x-A, y);
  line(x-A, y, x-A, y-O);
  
}