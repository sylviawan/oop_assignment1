void setup()
{
  frameRate(30);
  size(700, 700);
  cellWidth = width / (float)colCount;
  cellHeight = height / (float)rowCount;
  
  //set every cell to be dead
  setBoard();

  updateBoard();
  
  selectCells();
}

void toggle(int row, int col, boolean alive)
{
  if (row >= 0 && col >= 0 && row <= rowCount && col <= colCount)
  {
    board[row][col] = alive;
  }
}

boolean dragged = false;
boolean pressed = false;
int state = 0;
int count = 0;
int rowCount = 40;
int colCount = 40;

float cellWidth;
float cellHeight;

boolean[][] board = new boolean [rowCount][colCount];
int[][] neighbourCount  = new int [rowCount][colCount];

void draw()
{
  if (state == 0)
  {
    selectCells();
  }
  
  else if (state == 1)
  {
    updateBoard();
  }
}

void updateBoard()
{ 
  stroke(255);
  
  for (int i = 0; i < rowCount; i++)
  {
    for(int j = 0; j < colCount; j++)
    {
      checkCells(i,j);
    }
  }
  
  for (int i = 0; i < rowCount; i++)
  {
    for(int j = 0; j < colCount; j++)
    {
      updateCells(i,j);
      if (board[i][j] == true)
      {
        fill(0,255,0);
        rect (i*cellWidth, j*cellHeight, cellWidth, cellHeight);
      }
      else
      {
        fill(0);
        rect (i*cellWidth, j*cellHeight, cellWidth, cellHeight);
      }
    }
  }
}

void setBoard()
{
  for (int i = 0; i < rowCount; i++)
  {
    for(int j = 0; j < colCount; j++)
    {
      if (i >= 0 && j >= 0 && i < rowCount && j < colCount)
      {
        board[i][j] = false;
      }
    }
  }
}

void updateCells(int i, int j)
{
  if (neighbourCount[i][j] <= 1)
  {
    toggle(i,j,false);
  }
  else if (neighbourCount[i][j] >= 4)
  {
    toggle(i,j,false);
  }
  else if ((neighbourCount[i][j] == 2 || neighbourCount[i][j] == 3) && board[i][j] == true)
  {
    toggle(i,j,true);
  }
  else if (neighbourCount[i][j] == 3 && board[i][j] == false)
  {
    toggle(i,j,true);
  }
}

int cellCount(int i, int j)
{
  count = 0;  
  
  //top left corner
  if (i == 0 && j == 0)
  {
    getCell(i, j+1);
    getCell(i+1, j);
    getCell(i+1, j+1);
  }
  //top row
  else if (i == 0 && j < rowCount-1)
  {
    getCell(i, j-1);
    getCell(i, j+1);
    getCell(i+1, j-1);
    getCell(i+1, j);
    getCell(i+1, j+1);
  }
  //most left column
  else if (j == 0 && i < colCount-1)
  {
    getCell(i, j+1);
    getCell(i-1, j);
    getCell(i+1, j);
    getCell(i+1, j+1);
    getCell(i-1, j+1);
  }
  //bottom left corner
  else if ( i == colCount-1 && j == 0)
  {
    getCell(i-1, j);
    getCell(i-1, j+1);
    getCell(i, j+1);
  }
  //most bottom row
  else if (i == colCount-1 && j < rowCount-1)
  {
    getCell(i, j-1);
    getCell(i, j+1);
    getCell(i-1, j);
    getCell(i-1, j+1);
    getCell(i-1, j-1);
  }
  
  //bottom right corner
  else if (i == colCount-1 && j == rowCount-1)
  {
    getCell(i-1, j-1);
    getCell(i-1, j);
    getCell(i, j-1);
  }
 //most right column
 else if (j == rowCount-1 && i > 0)
 {
   getCell(i-1, j);
   getCell(i+1, j);
   getCell(i, j-1);
   getCell(i+1, j-1);
   getCell(i-1, j-1);
 }
 //top right corner
 else if (i == 0 && j == rowCount-1)
 {
   getCell(i, j-1);
   getCell(i+1, j);
   getCell(i+1, j-1);
 }
 //any other cell
 else
 {
   getCell(i, j-1);
   getCell(i, j+1);
   getCell(i-1, j-1);
   getCell(i-1, j);
   getCell(i+1, j+1);
   getCell(i+1, j);
   getCell(i+1, j-1);  
   getCell(i-1, j+1);
 }
 
 return count;
}

void checkCells(int i, int j)
{
    int count = cellCount(i,j);
    neighbourCount[i][j] = count; 
}

void getCell(int i, int j)
{
  if(board[i][j] == true)
  {
    count++;
  }
}

void randomise()
{
  for (int i = 0; i < rowCount; i++)
  {
    for(int j = 0; j < colCount; j++)
    {
      if (random(0.0f, 1.0f) > 0.5f)
      {
        toggle(i,j,true);
      }
    }
  }
}

void selectCells()
{
  if (pressed == true)
  {
    int i = (int)(mouseX / cellWidth);
    int j = (int)(mouseY / cellHeight);

    if (i >= 0 && i < rowCount && j >= 0 && j < colCount)
    {
     if (board[i][j] == false)
     {
       toggle(i,j,true);
       fill(0,255,0);
       rect (i*cellWidth, j*cellHeight, cellWidth, cellHeight);
     }
     else if(board[i][j] == true)
     {
       toggle(i,j,false);
       fill(0);
       rect (i*cellWidth, j*cellHeight, cellWidth, cellHeight);
     }
     
    }
    pressed = false;
  }
  
  if (dragged == true)
  {
    int i = (int)(mouseX / cellWidth);
    int j = (int)(mouseY / cellHeight);
    
    if (i >= 0 && i < rowCount && j >= 0 && j < colCount)
    {
     if (board[i][j] == false)
     {
       toggle(i,j,true);
       fill(0,255,0);
       rect (i*cellWidth, j*cellHeight, cellWidth, cellHeight);
     }
    }
    dragged = false;
  }
}

void mousePressed() 
{
  if ((mouseX >= 0 && mouseY >= 0 && mouseX <= width && mouseY <= height) && state == 0)
  {
    pressed = true;
  }
}

void mouseDragged() 
{
  if ((mouseX >= 0 && mouseY >= 0 && mouseX <= width && mouseY <= height) && state == 0)
  {
    dragged = true;
  }
}


void keyPressed()
{
  if (key == ' ' && state == 0)
  {
    state = 1;
  }
  
  else if (key == ' ' && state == 1)
  {
    state = 0;
  }
  
  else if(key == 'c' || key == 'C')
  {
    setBoard();
    updateBoard();
    state = 0;
    selectCells();
  }
  else if(key == 'r' || key == 'R')
  {
    setBoard();
    updateBoard();
    randomise();
    state = 1;
  }
}