import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manav/login/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Inject the controller instance
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 1. UserName Field:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    child: TextField(
                      controller: usernameController,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(color: Colors.blueAccent),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        label: const Text("Username"),
                      ),
                    ),
                  ),
                ),
                // 2. Password Field:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    child: TextField(
                      controller: passwordController,
                      maxLength: 10,
                      obscureText: true,
                      keyboardType: TextInputType.text, // Changed to text to match alpha-numeric strings
                      style: const TextStyle(color: Colors.blueAccent),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        label: const Text("Password"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Show a loading circle or the login button based on state
                Obx(() => controller.isLoading.value
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                  onPressed: () {
                    // Trigger action with current values
                    controller.loginCount(
                      usernameController.text.trim(),
                      passwordController.text.trim(),
                    );
                  },
                  child: const Text('Login'),
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
