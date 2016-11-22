void setup()
{
  size(500,500);
  exp = new Expense();
  exp1 = new Expense("Thomas", "Independent", "Dublin Central", 0, 0);
  
  println(exp1);
  
  exp.name = "Derek";
  exp1.name = "Thomas";
  
  //different to variables, these classes now becomes the same
  //now the memory being used for exp1 has been garbage collected aka freed
  //they both point to the same object
  //exp = exp1;
  //exp1.name = "Jason";
  
  //println(exp.name);
  
  expenses.add(exp);
  expenses.add(exp1);
  
  /*
  for(int i = 0; i < expenses.size(); i++)
  {
    Expense e = expenses.get(i);
    println(e);
  }
  
  for (Expense e:expenses)
  {
    println(e);
  }*/
 ia.add(12);
  for(int i = 0; i < ia.size(); i++)
  {
    int x = ia.get(i);
    println(x);
  }
  
 println(expenses.size()-1);
 
if (expenses.size() == 0)
{
  println("empty");
}

println(f);


}

ArrayList<Expense> expenses = new ArrayList<Expense>();
ArrayList<Integer> ia = new ArrayList<Integer>(); 

float f = map(8, 0, 100, -50, -30);

Expense exp;
Expense exp1;

void draw()
{
  
}