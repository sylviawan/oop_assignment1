void setup()
{
  size(500, 500);
  background(0);
}

void draw()
{
  stroke(255, 255, 0);
  
  for(int i = 0; i <= width; i+=10)
  {
    line(width/2, height/2, i, width);
  }
  
  int x = 0;
  
  for (int j = height/2; j < height; j+=x)
  {
    line(0, j, width, j);
    x++;
  }
}