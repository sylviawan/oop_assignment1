void setup()
{
  size(500, 500);
}

void draw()
{
  noStroke();
  fill(255, 0, 0);
  
  if (mouseX < width/2 && mouseY< height/2)
  {
    background(0, 255, 0);
    rect (0, 0, (width/2), (height/2));
  }
  else if (mouseX > width/2 && mouseY < height/2)
  {
    background(0, 255, 0);
    rect (width/2, 0, (width/2), (height/2));
  }
  else if (mouseX > width/2 && mouseY > height/2)
  {
    background(0, 255, 0);
    rect (width/2, height/2, (width/2), (height/2));
  }
  else if (mouseX < width/2 && mouseY > height/2)
  {
    background(0, 255, 0);
    rect (0, height/2, (width/2), (height/2));
  }
  else
  {
    background(0, 255, 0);
  }
}