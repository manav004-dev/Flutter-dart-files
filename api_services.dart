import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mnv/login/login_model.dart';

class ApiServices {
  static const String loginUrl =
      'https://www.anniecabs.com/LJ/index.php/api/login';

  Future<LoginModel> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(loginUrl),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          'email': username,
          'password': password,
        },
      );

      print('Status Code: ${response.statusCode}');
      print('Response: ${response.body}');

      if (response.statusCode != 200 &&
          response.statusCode != 201) {
        throw Exception(
          'Server Error: ${response.statusCode}',
        );
      }

      final dynamic decodedData =
      jsonDecode(response.body);

      if (decodedData is! Map<String, dynamic>) {
        throw Exception(
          'Invalid response format from server',
        );
      }

      return LoginModel.fromJson(decodedData);
    } catch (e) {
      print('API Error: $e');

      throw Exception(
        e.toString().replaceFirst(
          'Exception: ',
          '',
        ),
      );
    }
  }
}