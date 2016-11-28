class background
{

  // variables for circles
  float angle1 = 0;
  float angle2 = 0;
  float speed1= 0.5;
  float speed2= 1;

  // variables for sphere thingy
  float speed = 2;
  float angleOfSphere;
  int speedOfSphere = 1;

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

    fill(195, 165, 225);
    noStroke();
    ellipse(width/2, height/2, 230, 230);



  }


  void polygonDesign()
  {

    
    noFill();
    stroke(255);

    rect(880, 400, 150, 160);
    
    fill(195, 165, 225);
    noStroke();
    polygon(100, 100, 70, 6); 

    
    pushMatrix();

    translate(950, 450);
    rotateX(radians(angleOfSphere));
    rotateY(radians(angleOfSphere));
    angleOfSphere +=speedOfSphere;

    stroke(color(255));
    sphereDetail(20);
    sphere(40);

    popMatrix();
   
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

  void sometext()
  {
    fill(195, 165, 225);
    textSize(12);
    text("New constellation", 85, 340);
  }
}