void setup ()
{
    size(500, 500);
}

void draw ()
{
    stroke(255,0,0);
    background(0,255,0);
    fill (255,0,0);
    if(mouseX < width/ 0.5f && mouseY < height /0.5f)
    {
      fill(0,255,0);
      rect( 0,0,width/2,width/2);
      background(255,0,0);
    }
    if(mouseX > width/ 0.5f && mouseY < height/0.5f)
    {
      fill(0,255,0);
      rect( 0,width/2,0,width/2);
      background(0,255,0);
    }
    if(mouseX < width/ 0.5f && mouseY > height/0.5f)
    {
      fill(0,255,0);
      rect( width/2,0,0,width/2);
      background(0,255,0);
    }
     if(mouseX > width/ 0.5f && mouseY > height/0.5f)
     {
       fill(0,255,0);
      rect( width/2,width/2,0,0);
      background(0,255,0);
     }
}