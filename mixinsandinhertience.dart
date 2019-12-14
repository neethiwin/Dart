import 'package:Dart/Honda.dart';

void main(){
  var honda = Honda();
  honda.carNo = 'Ka01H12';
  print(honda.carNo);
  print(honda.getFuel());
  honda.start();
}

class CNGKit {
  String getFuel(){
    return 'CNG fuel';
  }
}

class Car {
  var _carno;

  set carNo(value) => _carno = value;
  String get carNo => _carno;

  String getFuel(){
    return 'general fuel';
  }
}

// keyword with used for mixins 
class Honda extends Car with CNGKit{
  void start(){
    print('honda car started');
  }

}
