float[] rainFall = {45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58};
String[] months = {"Jan", "Feb", "March", "April", "May", 
                   "June", "July", "August", "Sept", "Oct", "Nov", "Dec"};
                   
void setup()
{
   size(500,500);
   background(0);
   
   for(int i = 0; i < rainFall.length; i++)
   {
     println(months[i] + "\t" + rainFall[i]);
   }
   
   //for each loop
   //can't modify the array and no access to i
   /*
   for(String m:months)
   {
     println(m);
   }
   */
   
   println("\nMaximum index is " + maxIndex(rainFall));
   println("Minimum index is " + minIndex(rainFall));
   println("The Sum is " + calcSum(rainFall));
   println("The Average is " + Average(rainFall));
   
   int i;
   float x = 10;
   int R = 106;
   int G = 207;
   int B = 255;
   float maxH = height/rainFall[maxIndex(rainFall)];
   
   for(i=0; i < rainFall.length; i++)
   {
       G = 255;
       B = 255;
        
       R -= rainFall[i]*4;
       G -= rainFall[i]*2;
       
       noStroke(); 
       fill(R, G, B);
       rect(x, height, 35, -rainFall[i]*maxH);
       
       x+=40;
   }
}

int maxIndex(float[] arr)
{
  int i = 0;
  float max = Float.MIN_VALUE;
  int maxInd = -1;
  
  for(i = 0; i < arr.length; i++)
  {
    if (arr[i] > max)
    {
      max = arr[i];
      maxInd = i;
    }
  }
  
  return maxInd;
    
}

int minIndex(float[] arr)
{
  int i = 0;
  float min = Float.MAX_VALUE;
  int minInd = -1;
  
  for(i = 0; i < arr.length; i++)
  {
    if (arr[i] < min)
    {
      min = arr[i];
      minInd = i;
    }
  }
  
  return minInd;
    
}

float calcSum(float[] arr)
{
  float sum = 0;
  
  for(float a:arr)
  {
    sum += a;
  }
  
  return sum;
}


float Average(float[] arr)
{
   float sum = calcSum(arr);
   
   float amount = arr.length;
   
   float avg = sum/amount;
   
   return avg;
}  
  
                   
void draw()
{
}