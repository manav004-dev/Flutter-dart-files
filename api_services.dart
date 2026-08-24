import 'package:http/http.dart' as http;
class ApiServices{
  future<void> Login() async{
    try {
      final respo = await http.post(
          Uri.parse("https://www.anniecabs.com/LJ/index.php/api/login"));
      print(respo);

      if (respo.statusCode == 200 || respo.statusCode == 200) {
        final user_value = login.fromJson(respo.body as Map<String, dynamic>);
        return user_value;
      }
      else {
        throw Exception("Error...");
      }
    }catch (e){
      print(e.toString());
      throw Exception("Error..."); 
    }
  }
}