import 'package:get/get.dart';
import 'package:manav/api/api_services.dart';
import 'package:manav/login/login_model.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  Future<void> loginCount(String username, String password) async {
    try {
      isLoading.value = true;

      // Call api service and catch return value
      LoginModel respo = await ApiServices().login(username: username, password: password);

      if (respo.responseCode.toString() == "1") {
        Get.snackbar("Success", respo.message ?? "Logged in successfully!");
        // Navigate to your home dashboard screen here if needed, e.g., Get.to(Dashboard());
      } else {
        Get.snackbar("Failed", respo.message ?? "Invalid credentials");
      }
    } catch (e) {
      Get.snackbar("Error", "Something went wrong.");
    } finally {
      isLoading.value = false;
    }
  }
}
