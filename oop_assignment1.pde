/* 
 Object Oriented Programming
 DT282/2 Group E
 C15423602 Sylvia Siu Wei Wan
 
 */


import java.util.*;
import java.util.concurrent.ThreadLocalRandom;

//classes
public ArrayList<Vertex> vertexes = new ArrayList<Vertex>();

background bg;
Button btn;
DigitalClock digitalClock;
radar rdr;


// global variables
radio[] blocks = new radio[18];

//radio position
float radposx = 800;
float radposy = 300;


 float[] x = new float[100];
float[] y = new float[100];
float[] speed_1 = new float[100];

void setup()
{
  
  bg = new background();
  btn = new Button(this);
  digitalClock = new DigitalClock(20, 950, 550);
  rdr = new radar();

 
 //setting up stars in background
  int c = 0;
  while(c < 100) {  
    x[c] = random(0, width);
    y[c] = random(0, height);
    speed_1[c] = random(1, 3);
    c = c + 1;
  }
  

  size(1100, 600, P3D);
  smooth();

  for (int i = 0; i < 5; i++) 
  {
    addRandomVertex();
  }

  connectVertices();

  // radio blocks
  for (int i=0; i<18; i++)
  {
    blocks[i] = new radio(radposx, radposy);
    radposx += 8;
  }
}

void draw()
{
  background(0);


  //rendering stars in the background
  displayingStars();
  // constellations 
  for (Vertex v : vertexes) 
  {
    v.draw();
  }

  // blocks
  for (int i=0; i<18; i++)
  {
    blocks[i].display();
  }

  bg.polygonDesign();
  btn.button1(0);
  bg.circlePiece();
  bg.sometext();



  rdr.miniRadar();
  
  digitalClock.getTime();
  digitalClock.display();
}

void mousePressed()
{
  btn.button1(1);
}

public void connectVertices()
{
  for (Vertex v : vertexes)
  {
    int connections = ThreadLocalRandom.current().nextInt(1, 3);

    for (int i = 0; i < connections; i++)
    {
      Vertex randomVertex = vertexes.get(ThreadLocalRandom.current().nextInt(0, vertexes.size()-1));

      if (randomVertex == v) continue;

      v.connections.add(randomVertex);
    }
  }
}

public void addRandomVertex()
{
  vertexes.add(new Vertex(new PVector(ThreadLocalRandom.current().nextInt(40, 200), ThreadLocalRandom.current().nextInt(height - 200, height-40))));
}

private void displayingStars()
{
  stroke(255);
  strokeWeight(2);
  
  int c = 0;
  while(c < 100) {
    point(x[c], y[c]);
  
    x[c] = x[c] - speed_1[c];
    if(x[c] < 0) {
      x[c] = width;
    }
    c = c + 1;
  }
}