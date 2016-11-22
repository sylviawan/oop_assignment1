void setup()
{
  size(700,700);
  background(0);
  
  float[] rainFall = {45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58};
  String[] months = {"Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"};
  
  float border = 150; //the height of the border of the graph
  float linesNum = 10; //lines spaced in 10s on Y axis
  
  drawGraph (rainFall, months, border, linesNum);
}//end setup()


void drawGraph(float[] data, String[] horizLabels, float border, float linesNum)
{
  float startX = 45; //starting x positon of the graph
  float startY = height-startX; //starting y position of the graph
  float Endx = startY; //end x position of the graph
  float Endy = startX; //end y position of the graph
  
  stroke(255);
  line (startX, startY, startX, Endy); //draw Y axis
  line (startX, startY, Endx, startY); //draw X axis
  
  int i = 0;
    
  float gLength = Endx-startX; //length of the graph
  float gHeight = startY-startX; //height of the graph
    
  float spaceX = gLength / (horizLabels.length-1); //space factor between x axis
  float spaceY = gHeight / (border/linesNum); //space factir between y axis
    
  float x = startX; //x will start at the 0,0 of the graph (remember this is 0,0 of the graph, not the processing window) and will increase by linesNum every iteration
  float y = startY; //y will start at the 0,0 of the graph (remember this is 0,0 of the graph, not the processing window) and will increase by linesNum every iteration
  
  int j = i; //j will start at 0 and will increase by linesNum every iteration

  //draw the lines on the y axis
  for (i=0; i <= border/linesNum; i++)
  {
     line(x, y, x-5, y);
     textAlign(RIGHT);
     text(j, x-10, y);
       
     y -= spaceY; //move to the next space
     
     j+=linesNum;
  }
  
  //reset x and y at 0,0 of the graph
  x = startX;
  y = startY;
    
  //draw the lines on the x axis
  for (i=0; i < horizLabels.length; i++)
  {
     line(x, y, x, y+5);
     textAlign(CENTER);
     text(horizLabels[i], x, y+25);
       
     x += spaceX; //move to the next space
      
  }
    
  //change will be the x position of the graph and will move to each element in the horizLabels array  
  float change = startX;
  float nextY; //will store the next y position of the point to be plotted so the previous point can connect to it creating the line 
    
  stroke(0,255,255);
 
  //draw data
  for (i=0; i < data.length-1; i++)
  {
      y = map (-data[i], -border, 0, startX, gHeight+startX);
      nextY = map (-data[i+1], -border, 0, startX, gHeight+startX);
    
      //draw lines and dots where the data is plotted
      ellipse(change, y, 5, 5);
      line(change, y, change+spaceX, nextY); 
      change += spaceX;
  }
      //draw last dot
      nextY = map (-data[i], -border, 0, startX, gHeight+startX);
      ellipse(change, nextY, 5, 5);
}//end drawGraph