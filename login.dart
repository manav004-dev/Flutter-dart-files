import 'package:flutter/material.dart';

final TextEditingController usernameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class login_page extends StatelessWidget {
  login_page({super.key});

  // Note: 'name' is unused since 'usernameController' is assigned to the field
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Media query finds the total height of the user's viewport screen
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight, // Forces the container to fill the entire screen height
          child: Center(       // Centers items horizontally across the layout
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centers items vertically
              crossAxisAlignment: CrossAxisAlignment.center, // Centers items horizontally
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
                      obscureText: true, // Recommended: Hides text input for passwords
                      keyboardType: TextInputType.number,
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
