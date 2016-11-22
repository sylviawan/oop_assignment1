void setup()
{
  size(500,500);
  background(0);
  
  float[] rainFall = {45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58};
  String[] months = {"Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"};

  float diameter = 300;
  float lastAngle = PI;
  
  float sum = 0;
  
  noStroke();
  
  for(int i = 0; i < rainFall.length; i++)
  {
    sum += rainFall[i];
  }
    
  
  for(int i = 0; i < rainFall.length; i++)
  {
    float theta = map(rainFall[i], 0, sum, 0, PI*2);
    
    fill(map(theta, 0, PI*2, 0, 255)+150);
    
    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+theta, PIE);
    
    textAlign(CENTER);
    text(months[i], width/2-(diameter/2 + 20), height/2 - 20);
    
    lastAngle += theta;
  }
}