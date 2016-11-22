void setup()
{
  size(500, 500);
}
int x;
void draw()
{
  background( 200, 100, 100);
  noStroke();
  fill(255);
  println(frameCount);
  rect(x, 200, 150, 80);
  x++;

  if ( x==500 )
  {
    println(frameCount);
    rect(
    x--;
  }

}