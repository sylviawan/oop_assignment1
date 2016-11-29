class radar {

  float speed = 0.01;
  int trailLength = 50;  
  float theta = 0;
  float cx, cy;
  float radius = 100;

  void miniRadar() 
  {

    cx = 900;
    cy = 150;
    smooth();

    stroke(255);
    noFill();
    ellipse(cx, cy, radius * 2, radius * 2);

    float intensityChange = 255.0f / trailLength;
    for (int i = 0; i < trailLength; i ++) 
    {
      float lineTheta = theta - (i * speed);
      stroke(200, 255 - (i * intensityChange), 190);
      float x = cx + sin(lineTheta) * radius;
      float y = cy - cos(lineTheta) * radius;
      line(cx, cy, x, y);
    }

    theta += speed;
  }
}