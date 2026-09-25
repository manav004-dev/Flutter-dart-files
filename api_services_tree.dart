import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mnv/tree/tree_plant_model.dart';

class ApiServices {
  static const String treePlantUrl = 'https://anniecabs.com';

  Future<TreePlantResponseModel> Tree() async {
    try {
      final response = await http.get(
        Uri.parse(treePlantUrl),
        headers: {'Accept': 'application/json'},
      );

      print('Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw Exception('Server Error: ${response.statusCode}');
      }

      final dynamic decodedData = jsonDecode(response.body);
      return TreePlantResponseModel.fromJson(decodedData);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
