import 'dart:convert';
import 'dart:io';
import 'package:archive/archive.dart';
import 'package:path/path.dart' as p;
void main(){
  var listOfFiles = List<File>();
  Directory.current.
  listSync().forEach((filesystem){
    var fileStat = filesystem.statSync();
    if(fileStat.type == FileSystemEntityType.file){
      listOfFiles.add(File(filesystem.path));
    }
  });

  zipFiles(listOfFiles, Directory.current.path + Platform.pathSeparator + 'output.zip');
  unzipFiles(Directory.current.path + Platform.pathSeparator + 'output.zip',
   Directory.current.path + Platform.pathSeparator + 'out' );
}

void zipFiles(List<File> files, String path){
  var archive = Archive();
  files.forEach((file){
    archive.addFile(ArchiveFile(p.basename(file.path), file.lengthSync(), file.readAsBytesSync()));
  });
  var zipEncoder = ZipEncoder();
  var encodedFile = zipEncoder.encode(archive);
  File(path).writeAsBytesSync(encodedFile);
}

void unzipFiles(String zip, String path){
  var zipDecoder = ZipDecoder();
  var file = File(zip);
  var archive = zipDecoder.decodeBytes(file.readAsBytesSync());
  archive.forEach((archiveFile){
    var file = File(path + Platform.pathSeparator + archiveFile.name);
    file.createSync(recursive: true);
    file.writeAsBytesSync(archiveFile.content);
  });
}
