/* 
 Object Oriented Programming
 DT282/2 Group E
 C15423602 Sylvia Siu Wei Wan
 */

//classes asses
background bg;


void setup()
{
  bg = new background();
  size(1000, 600);
  smooth();
}

void draw()
{
  background(0);
  
  bg.circlePiece();
  bg.shootingstar();
}