class Expense
{
  String name;
  String party;
  String constituency;
  float returned;
  float claimed;
  color c;
  float total;
  
  Expense()
  {
    name = "";
    party = "";
  }
  
  Expense(String name, String party, String con, float returned, float claimed)
  {
    this.name = name;
    this.party = party;
    this.constituency = con;
    this.returned = returned;
    this.claimed = claimed;
    c = color(random(0,255), random(0,255), random(0,255));
    total = claimed - returned;
  }
  
  //convers object to a string so it can be printed
  String toString()
  {
    return name + "\t" + party + "\t" + constituency + "\t" + returned + "\t" + claimed;
  }
}
  