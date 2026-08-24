import 'package:manav/api/api_services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/scr/simple/get_controllers.dart;
class loginController extends GetxController{
  future<void> LoginCout() async{
    final respo = await ApiServices().login();
    if(respo.responseCode.toString() == "1"){
      Get.Snackbar(
        "Title",
        "Response"
      );
    }
    else{
      Get.snackbar(
        "Title",
        "Response"
      );
    }
  }
}