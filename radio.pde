class radio
{
  float startX;
  float startY;
  boolean overBox = false;
  boolean locked = false;
  int boxSize=15;

  radio(float x, float y)
  {
    this.startX=x;
    this.startY=y;
  }

  void display()
  {
    rect(startX, startY, 4, 15);

    // Test if the cursor is over the box 
    if (mouseX > startX-boxSize && mouseX < startX+boxSize && mouseY > startY-boxSize && mouseY < startY+boxSize)
    {
      overBox = true;  
      if (!locked)
      { 
        stroke(#6FDDEA); 
        fill(#6FDDEA);
      }
    } 
    else
    {
      stroke(#3148C4);
      fill(#3148C4);
      overBox = false;
    }
  }
}