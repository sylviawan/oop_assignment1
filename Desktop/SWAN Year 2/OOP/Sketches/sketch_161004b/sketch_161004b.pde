float[] rainFall = {45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58};
String[] months = {"Jan", "Feb", "March", "April", "May", "June", "July", "August", "Sept", "Oct", "Nov", "Dec" };


void setup()
{
  background(0);
  size(500, 500);
  noStroke();
  
  for (int i = 0 ; i < rainFall.length ; i ++)
  {
    println(months[i] + "\t" + rainFall[i]); 
  }
}

void drawGraph(float[] arr)
{
  float lineWidth = width / (float) arr.length;
  float x =
  
}