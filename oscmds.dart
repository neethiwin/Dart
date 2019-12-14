import 'dart:io';

void main(){
  print('OS: ${Platform.operatingSystem} - ${Platform.version}');
  print('IS Windows: ${Platform.isWindows}');
  Platform.environment.forEach((key, value){
    print('KEY: ${key}, VALUE: ${value}');
  });

  print('In Which file: ${Platform.script.path}');
  print('Dart path: ${Platform.executable}');
  print('path seperator: ${Platform.pathSeparator}');
}


