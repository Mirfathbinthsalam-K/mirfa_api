import 'package:http/http.dart' as http;


import '../models/user.dart';
import '../models/users.dart';

class HttpService {
  // static var client = http.Client();

  static Future<List<Users>> fetchProducts() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      var data = response.body;
      return usersFromJson(data);
    } else {
      // throw Exception();
      var data = response.body;
      return usersFromJson(data);
    }
  }
}