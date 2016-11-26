class clock extends time
{
  int fontSize;
  float x, y;
  
  clock(int font_size, float tx, float ty)
  {
    fontSize = font_size;
    x = tx;
    x = ty;
  }
  
  void getTime()
  {
    super.getTime();
  }
  
  void display()
  {
    fill(255);
    textSize(fontSize);
    textAlign(CENTER);
    text (h + ":" + nf(m, 2) + ":" + nf(s, 2), x, y);
  }
    
  
}
class time {
  int h, m, s;
 time()
 {
  }
  
  void getTime() 
  {
    h = hour();
    m = minute();
    s = second();
  }
}