import 'package:Dart/calculator.dart' as cal;
import 'dart:convert';

void main(){
  print(cal.add(120, 20));
  var name = 'Nitesh Suresh';
  List encodedList = utf8.encode(name);
  var encodedString = base64.encode(encodedList);
  print(encodedString);

  List decodedList = base64.decode(encodedString);
  var decodedString = utf8.decode(decodedList);
  print(decodedString);

}
