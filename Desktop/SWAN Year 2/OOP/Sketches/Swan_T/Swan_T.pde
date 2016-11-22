/* Created by Sylvia Wan and Thomas Delaney
    on Fri 16 Sept.
*/

void setup()
{
  size(500, 500);
}

void draw()
{
  
  background(0);
  noStroke();
  fill(mouseX, mouseY, mouseX);
  ellipse(mouseX, mouseY, width/5, height/5);
  ellipse(pmouseX, pmouseY+100, width/5, height/5);
  ellipse(pmouseX+100, pmouseY, width/5, height/5);
  ellipse(pmouseX+100, pmouseY+100, width/5, height/5);
  
  int x = 0;
  int y = 0;
  
  fill(0,255,0);
  triangle(x, y, x+25, y+25, x+50, y+50);
  ++x;
  ++y;
  
  println(mouseX);
  println(frameCount);
  
  
}