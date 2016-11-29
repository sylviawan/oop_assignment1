class spin 
{
  
  float angle1 = 0;
  float angle2 = 0;
  float speed1 = 0.5;
  float speed2 = 1;
  float speed = 2;
  float angleOfSphere;
  int speedOfSphere = 1;
  float x = 546;
  float y = 525;


  void circlePiece() 
  {

    noFill();
    stroke(255);

    strokeWeight(4);

    pushMatrix();

    translate(x, y);
    rotate(radians(angle1));
    angle1 += speed1;

    arc(x, y, 40, 40, 0, HALF_PI);
    noFill();

    strokeWeight(5);
    arc(0, 0, 70, 70, HALF_PI, PI);

    strokeWeight(15);
    arc(0, 0, 100, 100, PI+QUARTER_PI, TWO_PI);

    rotate(radians(angle2));
    angle2 -= speed2;
    strokeWeight(15);
    arc(0, 0, 80, 80, 0, HALF_PI);

    popMatrix();

    strokeWeight(1);
    fill(195, 165, 225);
    noStroke();
    ellipse(x, y, 60, 60);

    noFill();
  }
}