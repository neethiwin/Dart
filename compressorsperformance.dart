import 'dart:convert';
import 'dart:io';

void main(){
  compress(gzip);
  compress(base64);
  compress(zlib);
}

String getData(){
  var string = '';
  for(var i = 0; i < 10; i++){
    string = string + 'Hello';
  }
  return string;
}

void compress(var codec){
  var encodedvalue = utf8.encode(getData());
  var compressedvalue = codec.encode(encodedvalue);
  var decompressedvalue = codec.decode(compressedvalue);
  var decodedvalue = utf8.decode(encodedvalue);
  print('Compressor ${codec.runtimeType}');
  print('Encoded value ${encodedvalue.length} bytes');
  print('compressed value ${compressedvalue.length} bytes');
  print('decompressed value ${decompressedvalue.length} bytes');
  print('Decoded value ${decodedvalue.length} bytes');
  print('-------------');
}
