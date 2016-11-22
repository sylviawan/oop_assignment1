void setup()
{
  size(500, 500);
  //int x; Stack
  //start of sketch
}

//variables, type, name, value, scope

int x;

void draw()
{
  //gets called 60 times per second
  //variable? a symbol that represents a value that can 
  //change
  
  //built in variables
  //mouse x, mouse y
  //width, height
  //pmouseX, pmouseY - previous mouse position
  // frameCount
  background(0);
  noStroke();
  fill(mouseX, 200, mouseY);
  /*ellipse(width / 2, height / 2, mouseX, mouseY);
  println(mouseX);
  println(frameCount);
  
  */
  /*ellipse(x, height/2, mouseX, mouseY);
  x++;
  */
}//end draw()

// an int is a 4 byte number, a long is twice