//player varibles
int xdirP = 1; //x direction decider of player
int Pspeed = 10; //speed of player
boolean out_of_bounds = false; //if player is out of bounds

int score = 0; //player score

PFont scoretext;
PFont gamename;
PFont myName;
PFont pressSpace;
PFont GOtext;

boolean gamestart = false;
boolean gameover = false;

void setup()
{
  size(700,700);
  Px = (width/2)-50; //x position of player, top left x
  Py = height-25; // y position of player, top left y
  
  background(0);
}

void start_screen()
{
    gamename = loadFont("ForteMT-60.vlw");
    textFont(gamename);
    text("BUGZAP", 225, 225);
    
    myName = loadFont("ForteMT-48.vlw");
    textFont(myName);
    text("Programmed by\nThomas Delaney", 180, 340);
    
    pressSpace = loadFont("ForteMT-48.vlw");
    textFont(pressSpace);
    text("Press Space to Play", 148, 550);
    
    if (keyPressed)
    {
      if (key == ' ')
      {
        gamestart = true;
        println("True");
      }
    }
}

void GOscreen()
{
    GOtext = loadFont("ForteMT-60.vlw");
    textFont(GOtext);
    text("GAME OVER", 225, 225);
}
  

  int Px = width; //x position of player, top left x
  int Py = height; // y position of player, top left y
  int Bx = 300; //x position of bug
  int By = 50; //y position of bug
  int Lx1; //line x1
  int Ly1; //line y1
  int Lx2; //line x2
  int Ly2; //line y2
 
void draw()
{
  background(0);
  
  if (gamestart == false && gameover == false)
  {
    start_screen();
  }
  else if (gameover == false)
  {
    scoretext = loadFont("ForteMT-48.vlw");
    textFont(scoretext);
    text("Score: "+score , 20, 50);
  
    bug();
    player();
  }
  
  if (gameover == true)
  {
    GOscreen();
  }
}

void resetbug() 
{
  //resets the bugs position
  Bx = (int)random(200, 450);
  By = 50;
  score++;
  noFill();
  noStroke();
}

void player()
{
  stroke(255);
  fill(255);
  
  if (Px > width-50 || Px < 0) 
  {
    out_of_bounds = true;
  }
  else
  {
    out_of_bounds = false;
  }
  
  if (keyPressed)
  {
    if ((key == 'a' || key == 'A' || keyCode==LEFT) && (out_of_bounds == false))
    {
       xdirP *= 1;
       Px = Px + (Pspeed * (xdirP*(-1)));
    }
    else if ((key == 'd' || key == 'D' || keyCode==RIGHT) && (out_of_bounds == false))
    {
      Px = Px + (Pspeed * xdirP);
    }
    else
    {
      if (Px > width-50) 
      {
        Px = Px - 20;
      }
      else if (Px < 0) 
      {
        Px = Px + 20;
      }
    }
  }
  
  if (keyPressed)
  {
    if ((key == 'w' || key == 'W' || keyCode==UP) && (out_of_bounds == false))
    {
      int i;
      
      Lx1 = Px+25;
      Ly1 = Py-25;
      Lx2 = Px+25;
      Ly2 = Py-25;
      
      for(i=Ly2; i>0; i--)
      {
        Ly2 -= i;
      }
      
      line(Lx1, Ly1, Lx2, Ly2);
    }
  }
  
  
  triangle(Px, Py, Px+50, Py, Px+25, Py-25);
}

void bug()
{
  noFill();
  stroke(255);
  
  triangle(Bx, By, Bx+30, By, Bx+15, By-25);
  line(Bx+15, By-10, Bx, By+12.5);
  line(Bx+15, By-10, Bx+30, By+12.5);
  
  if(Lx2 >= Bx && Lx2 <= Bx+25)
  {
    resetbug();
  }
  
  if (By >= height)
  {
    gameover = true;
  }
  
  if (frameCount % 60 == 0)
  {
    Bx = (int)random(200, 450);
    By += 35;
  }
}