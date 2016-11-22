/* Game of Life
*/

void setup()
{
  size(500, 500);
  
  cellWidth = width / (float) colCount;
  cellHeight = height / (float) rowCount;
  
  //examples
  /*toggle(0, 5, true);
  toggle(1, 6, true);
  toggle(5, 2, true);*/
=
}

//method to set the cells
void toggle(int row, int col, boolean alive)
{
  if(rowCount >= 0 && row < rowCount && col >= 0 && col < colCount)
  {
    board[row][col] = true;
  } 
}

//method to get the cells
boolean getCell(int row, int col)
{
  if(rowCount >= 0 && row < rowCount && col >= 0 && col < colCount)
  {
    return board[row][col];
  }
  else return false;
}

//variables for rows and columns
int rowCount = 100;  //store number of row count
int colCount = 100;  //store number of column count

float cellWidth;
float cellHeight;

boolean[][] board = new boolean[rowCount][colCount];  //storing whether each cell is alive or dead

//Draw the game
void draw()
{
  //Draw the board
  //two for loops to draw the grid
  //So many if statements
  
  
  

}