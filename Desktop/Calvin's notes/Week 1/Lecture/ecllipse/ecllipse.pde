void  setup()
{
  size(500,500);
 
  // start of the sketch
}
//variables, types, name, value, scope
void draw ()
{
  //get called 60 times per second
  //variable- a symbol that repreents a value that can change
  
  // Built in variables
  //mouseX    mouseY    
  //width     height
  //pmouseX   pmouseY -previous mouse position
  //frameCount
  background(0);
  noStroke();
  fill(mouseX, 255, mouseY);
  ellipse(width /2, height / 2, mouseX ,mouseY);
  println(mouseX);
  println(frameCount);
}
//int is a 4 byte int
//float is a 8 byte 