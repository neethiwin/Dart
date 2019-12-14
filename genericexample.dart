import 'package:Dart/intcollector.dart';
void main(){
  var intcollector = IntCollector();
  intcollector.addAll([1,2,3,4]);
  intcollector.total();

  var intcollector1 = IntCollector();
  intcollector1.addAll([1.1,2.2,3,4]);
  intcollector1.total();
}


class IntCollector<T extends num> {
  final List<T> _values = List<T>();

  void addAll(Iterable<T> values) => _values.addAll(values);
  T elementAt(int index) => _values.elementAt(index);

  void total(){
    num total = 0;
    _values.forEach((item) {
      total = total + item;
    });
    print(total);
  }

}
