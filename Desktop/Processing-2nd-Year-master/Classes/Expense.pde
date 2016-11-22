class Expense
{
  String name;
  String party;
  String constituency;
  float returned;
  float claimed;
  color c;
  
  //default constructor gets called when the object gets created from the class
  //constructors do not have a return type
  //default constructor takes no parameters
  //should set fields to default values
  Expense()
  {
    name = "";
    party = "";
  }
  
  //parameterised constructor
  //job is to assign starting values to the fields
  Expense(String name, String con, String party, float returned, float claimed)
  {
    this.name = name;
    this.constituency = con;
    this.party = party;
    this.claimed = 0;
    this.returned = 0;
    c = color(random(0,255), random(0,255), random(0,255));
  }
  
  //convers object to a string so it can be printed
  String toString()
  {
    return name + "\t" + party + "\t" + constituency + "\t" + claimed + "\t" + returned;
  }
}
  