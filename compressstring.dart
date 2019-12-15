import 'dart:io';
import 'dart:convert';

void main(){
  var strings = 'Hello World';
  for(var i = 0; i < 10; i++){
    strings += strings;
  }

  // First encoded to utf8
  var utf8encoded = utf8.encode(strings);
  // compress using gzip format
  var gzipencoded = gzip.encode(utf8encoded);

  // decompress using gzip format
  var gzipdecoded = gzip.decode(gzipencoded);
  //decode to utf8
  var utf8decoded = utf8.decode(gzipdecoded);

  print('utf8 encoded ${utf8encoded.length} bytes');
  print('gzip encoded ${gzipencoded.length} bytes');
  print('gzip decoded ${gzipdecoded.length} bytes');
  print('utf8 decoded ${utf8decoded.length} bytes');
  assert(strings == utf8decoded);

}
