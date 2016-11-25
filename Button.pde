class Button
{
  oop_assignment1 t;
  Button(oop_assignment1 t) {
    this.t = t;
  }
  
  
  void button1(int i)
  {
    float d = dist(85, 50, mouseX, mouseY);
    ellipse(85, 50, 50, 50);
 
    if (i == 1 && d < 50 )
     {
        t.vertexes.clear();
          for (int j = 0; j < 5; j++) {
            addRandomVertex();
          }
        t.connectVertices();
     }
   } 
  
}