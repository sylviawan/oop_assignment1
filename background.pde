class background
{
  int[] shootX = new int[50];
  int[] shootY = new int[50];

  int METEOR_SIZE = 10; // initial size when it first appears
  float meteorSize = METEOR_SIZE; // size as it fades

  // distance a shooting star moves each frame - varies with each new shooting star
  float sDeltaX, sDeltaY; 
  int sTimer = -1;

  // random points of a new star
  int startX, startY;

  // variables for circles
  float angle1 = 0;
  float angle2 = 0;
  float speed1= 1;
  float speed2= 2;
  
  // variables for sphere thingy
  float speed = 2;
  float angleOfSphere;
  int speedOfSphere = 1;


  void shootingstar()
  {
    // drawing the stars
    for (int i=0; i<shootX.length-1; i++) 
    {
      int shootSize = max(0, int(meteorSize*i/shootX.length));

      // to get the tail to disappear need to switch to noStroke when it gets to 0
      if (shootSize>0) 
      {
        strokeWeight(shootSize);
        stroke(255);
      }
      else
        noStroke();
        line(shootX[i], shootY[i], shootX[i+1], shootY[i+1]);
        ellipse(shootX[i], shootY[i], meteorSize*i/shootX.length, meteorSize*i/shootX.length);
    }

    meteorSize *= 0.9; // shrink the shooting star as it fades
    // move the shooting star along it's path
    for (int i = 0; i < shootX.length-1; i++)
    {
      shootX[i] = shootX[i+1];
      shootY[i] = shootY[i+1];
    }

    // add the new points into the shooting star as long as it hasn't burnt out
    if (sTimer >= 0 && sTimer < shootX.length)
    {
      shootX[shootX.length-1] = int(startX + sDeltaX*(sTimer));
      shootY[shootY.length-1] = int(startY + sDeltaY*(sTimer));
      sTimer++;

      if (sTimer >= shootX.length)
      {
        sTimer = -1; // end the shooting star
      }
    }

    // create a new shooting star with some random probability
    if (random(5) < 1 && sTimer == -1) 
    {
      newShootingStar();
    }
  }

  /*
  Starts a new shooting star by randomly picking start and end point.
   */
  void newShootingStar()
  {
    int endX, endY;
    startX = (int)random(width);
    startY = (int)random(height);
    endX = (int)random(width);
    endY = (int)random(height);
    sDeltaX = (endX - startX)/(float)(shootX.length);
    sDeltaY = (endY - startY)/(float)(shootY.length);
    sTimer = 0; // starts the timer which ends when it reaches shootX.length
    meteorSize = METEOR_SIZE;

    // by filling the array with the start point all lines will essentially form a point initialy
    for (int i = 0; i < shootX.length; i++)
    {
      shootX[i] = startX;
      shootY[i] = startY;
    }
  }

  void circlePiece() 
  {
    
    noFill();
    stroke(255);

    strokeWeight(4);
    
    rect(20, 380, 200, 200);
    println(mouseX, mouseY);

    pushMatrix();

    translate(width/2, height/2);
    rotate(radians(angle1));
    angle1 += speed1;

    arc(width/2, height/2, 325, 325, 0, HALF_PI);
    noFill();

    strokeWeight(5);
    arc(0, 0, 345, 345, HALF_PI, PI);

    strokeWeight(15);
    arc(0, 0, 365, 365, PI+QUARTER_PI, TWO_PI);

    rotate(radians(angle2));
    angle2 -= speed2;
    strokeWeight(2);
    arc(0, 0, 395, 395, 0, HALF_PI);

    popMatrix();


    ellipse(width/2, height/2, 150, 150);

    fill(195, 45, 225);
    ellipse(width/2, height/2, 100, 100);

    fill(0);
    textSize(15);
    text("You stupid", width/2-40, height/2);  
  }
  
  void hexagon()
  {
    polygon(50, 50, 70, 7);  // Heptagon
  }
  
  void polygonDesign()
  {
    polygon(800, 100, 70, 6);  // Heptagon
    
    fill(24, 57,200);
    stroke(69, 298, 208);
    pushMatrix();
    translate(790, 100);
    rotateX(radians(angleOfSphere));
    rotateY(radians(angleOfSphere));
    angleOfSphere +=speedOfSphere;
    stroke(color(69, 298, 208));
    sphereDetail(20);
    sphere(40);
    popMatrix();
    noFill();
  }
  
  void polygon(float x, float y, float radius, int npoints) 
  {
    float angle = TWO_PI / npoints;
    beginShape();
    
    for (float a = 0; a < TWO_PI; a += angle)
    {
      float sx = x + cos(a) * radius;
      float sy = y + sin(a) * radius;
      vertex(sx, sy);
    }
    
    endShape(CLOSE);
  }

}