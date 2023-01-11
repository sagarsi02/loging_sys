import 'dart:convert';

import 'package:http/http.dart' as http;

// main() async {
//   AuthService authService = AuthService();
//   var responseBody = await authService.registration(
//       "sagarsi786", "grampower@sagar.com", "sagar", "sagar");
//   print(responseBody);
// }

// class AuthService {
//   final registrationUri = Uri.parse("http://127.0.0.1:8000/api/createuser/");
//   Future<String> registration(
//       String username, String email, String password, String cpassword) async {
//     var response = await http.post(registrationUri, body: {
//       "username": username,
//       "email": email,
//       "password": password,
//       "c_password": cpassword,
//     });
//     return response.body;
//   }
// }

import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = Uri.parse('https://dummyjson.com/products');

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['products'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}
