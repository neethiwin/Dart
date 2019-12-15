import 'dart:io';

void main() async{
  print('Main Started');
  await writeTextToFile();
  print('Main Ended');
}

Future<File> writeTextToFile(){
  var file = File(Directory.current.path + Platform.pathSeparator + 'newfile.txt');  
  print('writing to file');
  return file.writeAsString('Hello bhai', mode: FileMode.write);
}
