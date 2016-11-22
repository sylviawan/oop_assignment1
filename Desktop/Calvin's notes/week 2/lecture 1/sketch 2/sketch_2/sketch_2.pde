void setup ()
{
    size(500, 500);
}

float x;
float boxWidth=50;
float speed = 1.0f;
void draw ()
{
  background(0);
   rect (x, height /2, boxWidth, boxWidth );
   x += speed;
   if( x + boxWidth > width || x<0)
   {
       speed = -speed;
   } 
  

 /*   stroke (0,255,255);
   for ( int i=0; i < width; i += 10)
   {
       line(i,0,i, height);
   }
   int i= 0;
   while( i < height)
   {
       line (0 , i , width,i);
       i+=10;
   }
   
   */
}