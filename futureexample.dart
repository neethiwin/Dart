import 'dart:io';

void main(){
  var filepath = File(Directory.current.path + Platform.pathSeparator + 'newfile.txt');
  print('Main Started');
  var future = filepath.open(mode: FileMode.write);
  future.then((randomAccessFile){
    randomAccessFile.writeString('Hello Bhaias sadjadnalndalndalkjdnajdadnajdnajdn!')
    .catchError((error) {
      print(error.toString());
    }).whenComplete((){
      randomAccessFile.close();
    });
    print('File write completed');
  });
  print('Main Ended');

}
