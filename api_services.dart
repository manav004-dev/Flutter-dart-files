import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:manav/login/login_model.dart'; // Make sure this path matches your project structure

class ApiServices {
  Future<LoginModel> login({required String username, required String password}) async {
    try {
      final response = await http.post(
        Uri.parse("https://www.anniecabs.com/LJ/index.php/api/login"),
        body: {
          'email': username, // Check your API docs to see if it expects 'email' or 'username'
          'password': password,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // Decode the raw string body into a Map before parsing
        final Map<String, dynamic> decodedData = jsonDecode(response.body);
        return LoginModel.fromJson(decodedData);
      } else {
        throw Exception("Server Error: ${response.statusCode}");
      }
    } catch (e) {
      print(e.toString());
      throw Exception("Failed to log in: $e");
    }
  }
}
