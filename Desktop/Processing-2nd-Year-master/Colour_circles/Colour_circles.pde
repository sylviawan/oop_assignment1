int x = 0;
int y = 0;
int sizew = 50;
int sizeh = 50;
int colourR=0, colourG=0, colourB=0;

void setup()
{
   size(1250,800);
}

void draw()
{
  noStroke();
  fill(colourR, colourG, colourB);
  ellipse(x+(sizew/2), y+(sizeh/2), sizew, sizeh);
  
  if(x<1250)
  {
    x+=50;
    colourR+=25;
  }
  else
  {
     y += 50;
     x = 0;
     colourG+=25;
     colourR=0;
  }
  
  if(y>=800)
  {
    x=0;
    y=0;
    colourB+=25;
    colourG=0;
    colourR=0;
  }
  
  if(colourB == 250)
  {
    colourB=0;
    colourG=0;
    colourR=0;
  }
    
}