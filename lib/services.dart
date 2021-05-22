import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future Myfunction(){
  var response = http.get(Uri.parse('https://api.github.com/users/hadley/orgs'));

  print(response);
}