void setup()
{
  size(1080,720);
  background(0);
}

int size = 0;
int ifclicked = 0;

void draw()
{
  background(0);
  if (mousePressed == true)
  {
    size += 5;
    fill(255);
    ellipse(mouseX, mouseY, size, size);
  } else {
    size=0;
  }
}