mport 'dart:collection';

//function with optional arguments
bool processFiles(var filename, [bool open = false]){
  if(open){
    print("opening the file ${filename}");
    return true;
  }
  return false;
}

//Named Parameters function
int area({int height = 10, int width = 10}){
  return height * width;
}

void main(){
  Queue stock = new Queue();
  stock.add("First");
  stock.add("Second");
  stock.add("Third");
  stock.removeFirst();
  stock.removeLast(); 
  print(stock);
  
  Map todos = new Map();
  todos.putIfAbsent("Name", () => "Nitesh Suresh");
  todos.putIfAbsent("Age", () => 31);  
  print(todos);
  
  Map<String, String> family = new Map<String, String>();
  family.putIfAbsent("dad", () => "Suresh");
  family.putIfAbsent("mom", () =>  "vidyarani");
  family.putIfAbsent("brother", () => "rakesh");
  print(family);
  
  //ASSERT
  //Asserts are similar to throwing an error. its basic way of validating if variable value is true or false.
  int tapOn = 2;
  //Tap should be ON to proceed further.
  assert(tapOn == 2);
  print("Tap is on now");
  String randomValue = "How are you";
  randomValue.padLeft(20);
  print(randomValue);
  
  //optional values
  print(processFiles("mytext.txt"));
  print(processFiles("mynewtext.txt", true)); 
  
  // Named Parameters
  print(area(height: 2, width: 2));
  
  //Functions as objects. Not really recommanded
  var showArea = area;
  print(showArea(height: 22, width : 22));
  
  //Anonymous functions
  var closure = (){return "hello";};
  print(closure());
  
  //Anonymous functions
  var animals = ["lion", "tiger", "cheta"];
  animals.where((item){
    if(item.startsWith("l")){
      return true;
    }
    return false;
  }).forEach(print);
    
  //handling exceptions. on block is used to handle specific exceptions
  
  try{
    // note default values are always null
    int value1;
    var value2 = 3;
    print(value1 * value2);
  }
  on NoSuchMethodError {
    print("Handling specially the no such method error");
  }
  catch(e){
    print("There was an error"+ e.toString());
  }finally{
    print("clean up");
  }
  
  
}
