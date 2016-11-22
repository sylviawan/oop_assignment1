void setup()
{
  size(500, 500);
}

void draw()
{
  
  for (int x = 0; x<=width; x+=20)
  {
    line(x, height, width/2, height/2);
  }
  
  int y = height/2;
  int gap =1;
  while (y<=height)
  {
    line(0, y, width, y);
    y += 1.2f;
  }
}