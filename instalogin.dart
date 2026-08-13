import 'package:flutter/material.dart';

final TextEditingController usernameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class insta_login extends StatelessWidget {
  insta_login({super.key});

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 400,
                    child: TextField(
                      controller: usernameController,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(color: Colors.blueAccent),
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          borderSide: BorderSide(strokeAlign: )
                        ),
                        label: const Text("Phone number,email or username"),
                      ),
                    ),
                  ),
                ),

                // 2. Password Field:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 400,
                    child: TextField(
                      controller: passwordController,
                      maxLength: 10,
                      obscureText: true, // Recommended: Hides text input for passwords
                      keyboardType: TextInputType.number,
                      style: const TextStyle(color: Colors.blueAccent),
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                        label: const Text("Password"),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10), // Adds direct breathing room before button

                ElevatedButton(
                  onPressed: () {
                    // Fixed: Changed from 'name.text' to read from 'usernameController.text'
                    print(usernameController.text);
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
