import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.sound.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class KosnikBirthday extends PApplet {



SoundFile cans;

int x = (int)random(100, 1820);
int y = (int)random(100, 980);

int sizew = 350;
int sizeh = 250;

int xdir = 1;
int ydir = 1;

float time;

int i = 1; //random imagine gen

int speed = 20;

int pcolourR = (int)random(0,255);
int pcolourG = (int)random(0,255);
int pcolourB = (int)random(0,255);

PImage k1;
PImage k2;
PImage k3;
PImage k4;
PImage k5;
PImage text;

public void setup()
{
  
  background(random(0,255), random(0,255), random(0,255));
  cans = new SoundFile(this, "cans.mp3");
  
  k1 = loadImage("kosnikuke.png");
  k2 = loadImage("kosnik1.png");
  k3 = loadImage("kosnik2.png");
  k4 = loadImage("kosnik3.png");
  k5 = loadImage("kosnikdolan.png");
  text = loadImage("text.png");
 
  cans.play();
}

public void draw()
{
  background(pcolourR, pcolourG, pcolourB);
  image(text,50,50);
  
  //xdir and ydir will chance the direction when multiplied by speed, x will be positive
  //if xdir is 1, and vice versa for y and if they are -1
  //1 or -1 determines if the shape is going up down or left or right
  x = x + (speed * xdir);
  y = y + (speed * ydir);
  
  if (x > (width-(sizew/2)) || x < (sizew/2)) 
  {
    pcolourR = (int)random(0,255);
    pcolourG = (int)random(0,255);
    pcolourB = (int)random(0,255);
 
    xdir *= -1;
    
    i = (int)random(1,5);
  }
  
  if (y > (height-(sizeh/2)) || y < (sizeh/2)) 
  {
    pcolourR = (int)random(0,255);
    pcolourG = (int)random(0,255);
    pcolourB = (int)random(0,255);
  
    ydir *= -1;
    
    i = (int)random(1,5);
  }
  
  if(i == 1)
  {
    image(k1,x-200,y-200);
  }
  else if(i == 2)
  {
    image(k2,x-200,y-200);
  }
  else if(i == 3)
  {
    image(k3,x-200,y-200);
  }
  else if(i == 4)
  {
    image(k4,x-200,y-200);
  }
  else
  {
    image(k5,x-200,y-200);
  }
}
    
  
  
  public void settings() {  size(1920,1080); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "KosnikBirthday" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
