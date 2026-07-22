import 'package:flutter/material.dart';

final TextEditingController nameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController numberController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController desController = TextEditingController();

class textfield extends StatelessWidget {
  const textfield({super.key});

  @override
  Widget build(BuildContext context) {

    final circularBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0), // Higher number makes it more circular
      borderSide: const BorderSide(
        color: Colors.deepPurple,
        width: 1.5,
      ),
    );

    // Defining a default gray border for when the field is not active
    final defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: const BorderSide(
        color: Colors.amber,
        width: 1.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 10,
          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQviDwAhQziIC7799R1Ll4STmKmtAbEIGh0mXheu8m7Ng&s=10"),
        ),
        backgroundColor: Colors.amberAccent,
        title: const Text(
          "Registration",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            // 1. Name Field
            SizedBox(
              width: 300,
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  label: const Text("Name"),
                  border: defaultBorder,
                  enabledBorder: defaultBorder,
                  focusedBorder: circularBorder,
                ),
              ),
            ),
            const SizedBox(height: 20), // Spacing between fields

            //2. Number field
            SizedBox(
              width: 300,
              child: TextField(
                controller: numberController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.call),
                  label: const Text("Number"),
                  border: defaultBorder,
                  enabledBorder: defaultBorder,
                  focusedBorder: circularBorder,
                ),
              ),
            ),
            const SizedBox(height: 20),

            //2. Email field
            SizedBox(
              width: 300,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined),
                  label: const Text("Email"),
                  border: defaultBorder,
                  enabledBorder: defaultBorder,
                  focusedBorder: circularBorder,
                ),
              ),
            ),
            const SizedBox(height: 20),

            //2. description field
            SizedBox(
              width: 300,
              child: TextField(
                controller: desController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.description_outlined),
                  label: const Text("Description"),
                  border: defaultBorder,
                  enabledBorder: defaultBorder,
                  focusedBorder: circularBorder,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 2. Password Field
            SizedBox(
              width: 300,
              child: TextField(
                controller: passwordController,
                obscureText: true, // Hides the password characters
                maxLength: 10,// Keeps your 10/10 character limit
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password_rounded),
                  label: const Text("Password"),
                  border: defaultBorder,
                  enabledBorder: defaultBorder,
                  focusedBorder: circularBorder,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
