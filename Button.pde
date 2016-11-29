class Button
{
  oop_assignment1 t;
  Button(oop_assignment1 t) 
  {
    this.t = t;
  }

  void button1(int i)
  {

    float d = dist(75, 300, mouseX, mouseY);
    ellipse(75, 300, 40, 40);

    if (i == 1 && d < 40 )
    {
      t.vertexes.clear();

      for (int j = 0; j < 5; j++) 
      {
        addRandomVertex();
      }

      t.connectVertices();
    }
  }
}