import 'package:Dart/Animal.dart' as an;
void main(){
  var dog = an.Animal();
  dog.bread = 'german';
  dog.name = 'pintu';
  dog.age = 5;

  print(dog);
}

class Animal {
  //private variables and methods starts with underscore (_) identifier.
  var _name;
  var _age;
  var bread;

  set name(value) => _name = value;
  String get name => _name;

  set age(value)=> _age = value;
  String get age => _age;

   @override
  String toString(){
    return _name;
  }


}
