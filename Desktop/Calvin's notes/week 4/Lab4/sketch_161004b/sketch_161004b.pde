void setup ()
{
  size (600,650);
  line(x,0,x,height-x);
  line(x,height-x,width,height-x);
  for( int i=0; i < rainFall.length-1; i++)
  {
        fill(255,0,0);
        line(x,-(rainFall[i] * 3) + height-95,x+50,-(rainFall[i+1] *3)+height-95);  
        x=x+50;
  }
  for( int i = 0; i <rainFall.length; i++)
  {
    text( num,x-width+25 ,yaxis);
    num=num+10;
    yaxis=yaxis-50;
  }
  for( int i =0; i <months.length; i++)
  {
    text( months[i],xaxis,height-10);
    xaxis=xaxis+50;
  }
}
int num=10;
int yaxis = 600;
int x =25; 
int xaxis=x-7;
float[] rainFall = {45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58};
String[] months = {"Jan", "Feb", "March", "April", "May" , "June", "July", "August", "Sept", "Oct", "Nov", "Dec" };
 void draw ()
 {
 }