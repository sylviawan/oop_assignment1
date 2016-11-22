void setup()
{
  size(500,500);
  float x = 250;
  float y = 250;
  
  int points = 5;
  
  float angle1 = TWO_PI / points;
  println(angle1);
  float CONST = TWO_PI / points;
  float angle2 = angle1/2;
  float angle3;
  float i;
  float rad1 = random(60,90);
  float rad2 = random(10,30); 

  for (i = 0; i < TWO_PI*points; i++)
  {
      if(i % 2 == 0)
      {
         line(x+(sin(angle1+angle2)*rad1), y+(cos(angle1+angle2)*rad1), x+(sin(angle1)*rad2), y+(cos(angle1)*rad2));
      }
      else
      {
        angle3 = angle1+CONST;
        line(x+(sin(angle1+angle2)*rad1), y+(cos(angle1+angle2)*rad1), x+(sin(angle3)*rad2), y+(cos(angle3)*rad2));
      } 
      
      angle1 += CONST;
  }
}