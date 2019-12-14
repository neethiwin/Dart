import 'package:http/http.dart' as http;

void main(){
  var url = 'http://fakerestapi.azurewebsites.net';
  var resource = 'api/Books';
  http
  .get(url + '/' + resource, 
  headers: {'Accept': 'application/json'})  
  .then((response) {
    print(response.statusCode);
//    print(response.body);
  });
}
