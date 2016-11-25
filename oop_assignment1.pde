/* 
 Object Oriented Programming
 DT282/2 Group E
 C15423602 Sylvia Siu Wei Wan
 */

//classes asses
import java.util.*;
import java.util.concurrent.ThreadLocalRandom;

ArrayList<Vertex> vertexes = new ArrayList<Vertex>();


background bg;
Button btn;

void setup()
{
  bg = new background();
  btn = new Button();
  
  size(1000, 600);
  smooth();
  
    for (int i = 0; i < 5; i++) {
    addRandomVertex();
  }
  
  for(Vertex v : vertexes) {
    int connections = ThreadLocalRandom.current().nextInt(1, 3);
    for(int i = 0; i < connections; i++) {
      Vertex randomVertex = vertexes.get(ThreadLocalRandom.current().nextInt(0, vertexes.size()-1));
      
      if (randomVertex == v) continue;
      
      v.connections.add(randomVertex);
    }
    
  }
}

void draw()
{
  background(0);
  
   for(Vertex v : vertexes) {
    v.draw();
  }

  btn.button1(0);
  bg.circlePiece();

  //btn.button2();
  // bg.shootingstar();
}

void mousePressed()
{
   btn.button1(1);
}

void addRandomVertex() {
  vertexes.add(new Vertex(new PVector(ThreadLocalRandom.current().nextInt(0, 100), ThreadLocalRandom.current().nextInt(height - 100, height))));
}