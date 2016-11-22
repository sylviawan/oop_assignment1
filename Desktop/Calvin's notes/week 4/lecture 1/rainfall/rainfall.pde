void setup ()
{
   size(500,500);
   
  // for ( int i=0; i < rainfall.length; i++)
   //{
    // println(months[i] +"\t" + rainfall[i]);
   //}
   max=maxindex(rainfall);
   println( 
}
  float[] rainfall = {45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58}; 
  String[]months = {"jan", "feb", "mar", "apr" , "may", "jun", "jul", "aug" ," sep", "oct", "nov", "dec"}; 
  float maxindex(float[] arr)
  {
    float max=0;
    for(int i =0; i <arr.length; i++)
    {
      if( arr[i] > max);
      {
        max = arr[i];
      }
    }
  }
  return max;
  
  
 void draw()
 {
 }