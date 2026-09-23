import 'package:get/get.dart';

import 'package:mnv/api/api_services.dart';
import 'package:mnv/login/login_model.dart';

class LoginController extends GetxController {
  final RxBool isLoading = false.obs;

  Future<void> loginCount(
      String username,
      String password,
      ) async {
    // Check username
    if (username.trim().isEmpty) {
      Get.snackbar(
        'Validation Error',
        'Please enter username.',
        snackPosition: SnackPosition.BOTTOM,
      );

      return;
    }

    // Check password
    if (password.trim().isEmpty) {
      Get.snackbar(
        'Validation Error',
        'Please enter password.',
        snackPosition: SnackPosition.BOTTOM,
      );

      return;
    }

    try {
      // Start loading
      isLoading.value = true;

      // Call API
      final LoginModel response =
      await ApiServices().login(
        username: username.trim(),
        password: password,
      );

      // Check API response
      if (response.responseCode.toString() == '1') {
        Get.snackbar(
          'Success',
          response.message ??
              'Login successful!',
          snackPosition: SnackPosition.BOTTOM,
        );

        // Navigate after successful login
        //
        // Example:
        // Get.off(() => const BookingPage());
      } else {
        Get.snackbar(
          'Login Failed',
          response.message ??
              'Invalid username or password.',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString().replaceFirst(
          'Exception: ',
          '',
        ),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      // Stop loading
      isLoading.value = false;
    }
  }
}