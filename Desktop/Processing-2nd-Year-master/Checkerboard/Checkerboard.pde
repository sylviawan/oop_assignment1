int size = 50;
int x = 0;
int y = 0;
int row = 0;
void setup()
{
  size(500,500);
}

void draw()
{
  while (y < height)
  {
    noStroke();
    fill(0);
    rect(x, y, size, size);
    
    x+=size*2;
    
    if(x > width)
    {

      y+=size;
      
      if(row%2 == 0)
      {
        x = size;
      }
      else
      {
        x = 0;
      }
       row++;
    }
  } 
  
  x = size;
  y = 0;
  row = 0;
  
  while (y < height)
  {
    noStroke();
    fill(255);
    rect(x, y, size, size);
    
    x+=size*2;
    
    if(x > width)
    {

      y+=size;
      
      if(row%2 == 0)
      {
        x = 0;
      }
      else
      {
        x = size;
      }
       row++;
    }
  } 
}