import 'dart:io';

class FileHandler{
  
  void listAllFiles(String path){
    var directory = Directory(path);
    var files = directory.listSync(recursive: true);
    files.forEach((file) {
      var state = file.statSync();
      print('PATH: ${file.path}');
      print('MODE: ${state.mode}');
      print('TYPE: ${state.type}');
      print('CHANGED: ${state.changed}');
      print('MODIFIED: ${state.modified}');
      print('SIZE: ${state.size}');
    });
  }

  void writeStringToFile(String path, String content, [bool append]){
    var file = File(path);
    var rf = file.openSync(mode: append ? FileMode.append: FileMode.write);
    rf.writeStringSync(content);
    rf.closeSync();
  }

  void printFileContent(String path){
    var file = File(path);
    var content = file.readAsStringSync();
    print(content);
  }
}

import 'package:Dart/filehandler.dart';

void main(){
  var fileHandler = FileHandler();
  fileHandler.listAllFiles('C:\\appcode');
  fileHandler.printFileContent('C:\\pubspec.yaml');
}


