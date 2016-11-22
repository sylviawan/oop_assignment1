void setup ()
{
    size(500, 500);
}

float x;
void draw ()
{
 /*  background(0);
  int i=0;
     stroke (0,255,255);
   while( i <height/2)
   {
       line (0 , i , width,i);
       i+=10;
   }
   i = 0;
   while( i <height/2)
   {
       line (250,250, width,i); (...) // line(x, y, x, y)
       i+=10;
   }
   i=0;
    while( i <height/2)
   {
       line (0 , i , 250,250);
       i+=10;
   }
  */
  for ( int x = 0; x <width; x+=20)
  { 
    line (x, height, width/2, height/2);
  }
   int y = height /2;
   int gap=1;
   while (y < height)
   {
      line (0, y, width, y);
      y+= gap;
      gap+=2;
   }
}