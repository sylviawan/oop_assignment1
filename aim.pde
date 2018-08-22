class aim 
{

  boolean hover;

  void hovering(boolean a)
  {
    hover = a;
  }

  void aimer()
  {

    stroke(255);

    //properties for the aim shape
    noFill();
    strokeWeight(3);
    ellipse(aimX, aimY, 25, 25);
    line(aimX -10, aimY, aimX+10, aimY);
    line(aimX, aimY-10, aimX, aimY +10);
    noStroke();

    //change values depending on what is pressed
    if (keyCode == UP && aimY > 169 ) 
    {
      aimY-=5;
    } 
    else if (keyCode == DOWN && aimY < 416) 
    {
      aimY+=5;
    } 
    else if (keyCode == LEFT && aimX > 325 )
    {
      aimX-=5;
    } 
    else if (keyCode == RIGHT && aimX < 775) 
    {
      aimX+=5;
    }  
    
    arrowKeys();

    keyCode = 'a'; //sets key back to null as the keycode will still be sotred in buffer
  }

  void arrowKeys()
  {
    stroke(255);
    if (keyCode == DOWN)
    {
      fill(#3148C4);
    } 
    else
    {
      noFill();
    }
    
    rect(400, 525, 30, 30);
    if (keyCode == LEFT)
    {
      fill(#3148C4);
    } 
    else
    {
      noFill();
    }
    
    rect(370, 525, 30, 30); 
    if (keyCode == RIGHT)
    {
      fill(#3148C4);
    } 
    else
    {
      noFill();
    }
    
    rect(430, 525, 30, 30);  
    if (keyCode == UP)
    {
      fill(#3148C4);
    } 
    else 
    {
      noFill();
    }
    
    rect(400, 495, 30, 30); 
    noFill();
  }
}