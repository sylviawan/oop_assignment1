void setup()
{
  size(500,500);
  background(0);  

  loadExpenses();
  drawExpenseBars();
}

ArrayList<Expense> expenses = new ArrayList<Expense>();
ArrayList<partyExpense> pExpenses = new ArrayList<partyExpense>();

void draw()
{
  keyPressed();
}

void loadExpenses()
{
  Table ExpTable = loadTable("expenses.txt", "tsv");
  
  int rowCount = ExpTable.getRowCount();
  
  for(int i = 0; i < rowCount; i++)
  {
    boolean found = false;
    
    Expense exp = new Expense(ExpTable.getString(i,0), ExpTable.getString(i,1), ExpTable.getString(i,2), ExpTable.getFloat(i,3), ExpTable.getFloat(i,4));
    expenses.add(exp);
    
    partyExpense partExpense = null;
    
    for (int j = 0 ; j < pExpenses.size(); j++) 
    { 
      if (exp.party.equals(pExpenses.get(j).name)) 
      { 
        found = true; 
        partExpense = pExpenses.get(j); 
        break; 
      } 
    } 

    if (!found) 
    { 
      partExpense = new partyExpense(exp.party); 
      pExpenses.add(partExpense); 
    } 

    partExpense.total += exp.total; 
  } 
}

void drawExpenseBars()
{
  background(0);
  Expense max = expenses.get(maxIndex());
  float x = 0;
  float maxH = (float)height/max.total;
  float w = (float)width/expenses.size();
  
  for (int i = 0; i < expenses.size(); i++)
  {
       Expense e = expenses.get(i);
       
       noStroke(); 
       fill(e.c);
       rect(x, height, w, -e.total*maxH);
       
       x+=w;
   }
}

void drawPartyExpenseBars()
{
  background(0);
  partyExpense max = pExpenses.get(maxIndexP());
  float x = 0;
  float maxH = (float)height/max.total;
  float w = (float)width/pExpenses.size();
  
  for (int i = 0; i < pExpenses.size(); i++)
  {
       partyExpense e = pExpenses.get(i);
       
       noStroke(); 
       fill(e.c);
       rect(x, height, w, -e.total*maxH);
       fill(255);
       text(e.name, x, height-20);
       x+=w;
   }
}

int maxIndex()
{
  float max = Float.MIN_VALUE;
  int maxInd = -1;
  
  for (int i = 0; i < expenses.size(); i++)
  {
    Expense e = expenses.get(i);
    
    if (e.total > max)
    {
      max = e.total;
      maxInd = i;
    }
  }
  
  return maxInd;
}

int maxIndexP()
{
  float max = Float.MIN_VALUE;
  int maxInd = -1;
  
  for (int i = 0; i < pExpenses.size(); i++)
  {
    partyExpense e = pExpenses.get(i);
    
    if (e.total > max)
    {
      max = e.total;
      maxInd = i;
    }
  }
  
  return maxInd;
}

void keyPressed()
{
  if (key == '1')
  {
    drawExpenseBars();
  }
  else if (key == '0')
  {
    drawPartyExpenseBars();
  }
}