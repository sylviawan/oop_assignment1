//variables for paddle
int xdirP = 1; //x direction decider of paddle
int Pspeed = 10; //speed of padde
boolean out_of_bounds = false; //if paddle is out of bounds
int padx = width*2; //x position of paddle
int pady = (height*4)+80; // y position of paddle

//variables for ball
int xdirB = 1; //x direction decider of ball
int ydirB = 1; //y direction decider of paddle
int Bspeed = 3; //speed of ball
int ballx = 250; //starting x position of ball
int bally = 250; //starting y position of ball
int bsize = 20; //size of ball

boolean touching_ball = false;

void setup()
{
  size(500, 500);
  background(0);
}

void paddle()
{
  noStroke();
  fill(255);
  
  if (padx > (width-(100)) || padx < 0) 
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
       padx = padx + (Pspeed * (xdirP*(-1)));
    }
    else if ((key == 'd' || key == 'D' || keyCode==RIGHT) && (out_of_bounds == false))
    {
      padx = padx + (Pspeed * xdirP);
    }
    else
    {
      if (padx > (width-(100))) 
      {
        padx = padx - 20;
      }
      else if (padx < 0) 
      {
        padx = padx + 20;
      }
    }
  }
  
  rect(padx, pady, 100, 20);
}

void ball()
{
  noStroke();
  fill(255);
  
  ballx = ballx + (Bspeed * xdirB);
  bally = bally + (Bspeed * ydirB);
  
  if (ballx > (width-(bsize)) || ballx < 0) 
  {
     xdirB *= -1;
  }
  
  if (bally < 20) 
  {
    ydirB *= -1;
  }
  
  if ((((ballx+10) >= padx) && ((ballx+10) <= (padx+100))) && ((bally+10) >= 480))                      
  {
    touching_ball = true;
  }
  else
  {
    touching_ball = false;
  }
  
  if (touching_ball == true)
  {
    ydirB *= -1;  
  }
  else if (bally > (height+bsize))
  {
    println("GAME OVER");
    stop();
  }
  
  ellipse(ballx, bally, 20, 20);
  
}
  
  
void draw()
{
  background(0);
  paddle();
  ball();
}