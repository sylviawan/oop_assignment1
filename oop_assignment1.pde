/* 
 Object Oriented Programming
 DT282/2 Group E
 C15423602 Sylvia Siu Wei Wan
 
 */

import java.util.*;
import java.io.FileReader;
import java.util.concurrent.ThreadLocalRandom;
import processing.sound.*;
spin Spin;

//classes
public ArrayList<Vertex> vertexes = new ArrayList<Vertex>();
BufferedReader reader;
String line;
String[] info;
ArrayList<String> _info = new ArrayList<String>();
boolean screen = false;

ArrayList<Window> planets = new ArrayList<Window>();

PImage[] planetsImage = new PImage[10]; 
public static float aimX = 400; // keeps track of the aim
public static float aimY = 400;
PImage starBG;
PImage bg2;

Window w;
radar r;
aim aimPlanet;


background bg;
Button btn;
DigitalClock digitalClock;
radar rdr;

//Attempt on background music
SoundFile sound;


// global variables
radio[] blocks = new radio[18];

//radio position
float radposx = 100;
float radposy = 150;


float[] x = new float[100];
float[] y = new float[100];
float[] speed_1 = new float[100];

void setup()
{

  //initializing sound file

  //find a mp3 file which sounds like space music, create a data folder where your project is stored and store the 
  //mp3 file there, then change the filename.mp3 below to the actual name of the file with the extension

  try 
  {
    BufferedReader br = new BufferedReader(new FileReader("/Users/sylviawan/desktop/oop_assignment1/planetsInfo.txt"));
    String line;
    while ((line = br.readLine()) != null)
    {
      _info.add(line);
    }
  } 
  catch (IOException e) 
  {
    System.out.println(e);
  }

  bg = new background();
  btn = new Button(this);
  digitalClock = new DigitalClock(20, 950, 550);
  rdr = new radar();


  //setting up stars in background
  int c = 0;
  while (c < 100) 
  {  
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


  Spin = new spin();
  aimPlanet = new aim();

  starBG = loadImage("screen.jpg");
  bg2 = loadImage("bg.jpg");


  for ( int i = 0; i< 10; i++ ) 
  {
    planetsImage[i] = loadImage( i + ".png" );
  }

  for (int i = 0; i < 5; i++) {
    int index = int(random(planetsImage.length));  // Same as int(random(4)
    int r = int(random(0, _info.size()-1));
    planets.add(new Window(planetsImage[index], _info.get(r)));
  }
  
  //sound.play();
}

void draw()
{
  
  if (screen == true)
  {
    background(0);

    //displays the background for the screen in the middle
    stroke(255);
    rect(300, 150, 500, 300);
    image(starBG, 300, 150, 500, 300);
    noStroke();

    Spin.circlePiece();
    aimPlanet.aimer();  


    for (int i = 0; i <planets.size(); i++) {
      Window part = planets.get(i);
      part.star();
    }
  } else {       
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
}

void mousePressed()
{
  btn.button1(1);

  if (screen == true)
  {
    
    float d = dist(546, 525, mouseX, mouseY); //measures if distacnes of mouse is within circle
    
    if (d < 30) 
    {
      planets.clear();
      
      for (int i = 0; i < 5; i++) 
      {
        int index = int(random(planetsImage.length));  // Same as int(random(4)
        int r = int(random(0, _info.size()-1));
        planets.add(new Window(planetsImage[index], _info.get(r)));
      }
    }
  }
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
  while (c < 100) {
    point(x[c], y[c]);

    x[c] = x[c] - speed_1[c];
    if (x[c] < 0) {
      x[c] = width;
    }
    c = c + 1;
  }
}

void keyPressed()
{
  if (key == 'z')
  {
    screen = !screen;
    println(screen);
  }
}