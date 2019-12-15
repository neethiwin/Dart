import 'dart:async';

// Timer with Callback
int counter = 0;
void main(){
  var duration = Duration(seconds: 2);
  Timer.periodic(duration, (timer) {
    print('Time: ${getTime()}');
    counter++;
    if(counter > 5) timer.cancel();
  });
}

String getTime(){
  return DateTime.now().toString();
}
