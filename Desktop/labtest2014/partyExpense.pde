
class partyExpense
{
 String name;
 color c;
 int total;
 
 partyExpense()
 {
   name = "";
 }
 
 partyExpense(String name)
 {
   this.name = name;
   c = color(random(0,255), random(0,255), random(0,255));
 }
 
 //convers object to a string so it can be printed
 String toString()
 {
   return name;
 }
}