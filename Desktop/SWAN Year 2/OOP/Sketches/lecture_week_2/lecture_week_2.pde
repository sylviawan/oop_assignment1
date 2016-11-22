void setup()
{
  size(500, 500);

}

int halfW, halfH;
  halfW = width / 2;
  halfH = height / 2;

void draw()
{
  background(0, 255, 0);
  noStroke();
  
  if (mouseX < width * 0.5f) && mouseY < height * 0.5f
  {
    rect(0, 0, halfW, halfH);
  }
  else (mouseX >=
}