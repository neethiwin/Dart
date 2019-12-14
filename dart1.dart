import 'dart:io';

enum colors {red, green, blue}
void main() {
  
  //boolean  
  var active = true;
  
  //runtimeType tell us the type of variable eventhrough the declartion is var.
  
//  print("Is value there, ${active.runtimeType}");
  
  //numbers
  num myage = 31.22;
  //int
  int age = 21;
  //double
  double temp = 23.22;
  
  print(myage.runtimeType);
  
  int input = int.parse("34e", onError: (source) => 0);
  print(input);
  
  // once const declared on a variable, the value must be initialized at declaration line and the same cannot change
  const String name = "Nitesh Suresh";
  
  String firstname = name.substring(6).trim();
  String lastname = name.substring(6, name.length);
  print("firstname: ${firstname}, lastname: ${lastname}");
  
  int index = name.indexOf(" ");
  firstname = name.substring(0, index);
  lastname = name.substring(index).trim();
  print(firstname);
  print(name.indexOf(" "));
  print(lastname);
  //stdout.write("Please enter the string");
 // String readLine = stdin.readLineSync();
  //stdout.write("You wrote ${readLine}");
  print(colors.blue.toString());
  print(colors.values);
  
  //In dart there is no concept of arrays. Collections are used instead.
  
 List values = new List();
 List vals = [12, "Nitesh", "How are you?"];
 values.add("Work");
 values.add(12);
 print(values);
 print(vals);
 List<int> genericIntValues = new List<int>();
 Set<int> uniqueValues = new Set<int>();
 uniqueValues.add(32);
 uniqueValues.add(32);
 uniqueValues.add(22);
 print(uniqueValues); 
  
  
  
  
}
