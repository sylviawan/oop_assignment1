import java.util.*;

class Window 
{
  aim aimPlanet;

  boolean hover = false;
  boolean alive = true;     
  float x = random(380, 720);
  float y = random(200, 400);
  float size = random(30, 100);
  PImage displayPlanet;
  String PlanetInfo;
  float textX = 850;
  float textY= 180;


  //stores the point of aim

  Window(PImage planetImage, String s) 
  {
    displayPlanet = planetImage;
    PlanetInfo = s;
    aimPlanet = new aim();
  }


  void star() 
  {

    //if alive is true then the planet will be displayed
    if (alive) 
    {
      image(displayPlanet, x-size/2, y-size/2, size, size);
    } 


    //measures the distance in relation to the star
    float d = dist(x, y, aimX, aimY);

    //if aim is within the planet then hover will be true and the following operations will be carried out
    if (d <size/2)
    {
      hover = true;
      displayInfo(PlanetInfo);//once hovering planets info is passed to the following function
    } else hover = false;

    //if the aim is within the planet and the space key is pressed the planet is then recorded as not being alive
    if (d < size/2 && key == ' ') 
    {
      alive = false; //will then change the value to false so that the planet is not displayed
    }

    aimPlanet.hovering(hover); //call hovering and passes boolean value
  }


  //this is to displat the text to screen, if the aim is hovering over planet

  void displayInfo(String PlanetInfo) 
  {

    //displays the rect for the info
    strokeWeight(5);
    fill(0);
    rect(850, 150, 200, 300, 20);
    noFill();

    fill(24, 67, 89); //fill the text
    textSize(16);

    if (alive) 
    {

      for (int i = 0; i < PlanetInfo.length(); i++)
      {
        //will skip a line every nth character
        if (i%15 == 0) {
          text('\n', textX, textY);
          textY+=17; //y value decreased to move the line down for text
          textX = 850;
        }
        
        textX+=13; // skip this amount of space after each character
        text(PlanetInfo.charAt(i), textX, textY);
      }
    } 
    else
    {
      textSize(30);
      fill(255, 0, 0);
      text("Planet\n     Destroyed", 850, 300); //if planet is not there anymore then it prints this
      noFill();
    }

    textX = 850;
    textY= 180;

    noFill();
  }
}