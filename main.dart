import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:mnv/login/login.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'MNV',

      theme: ThemeData(
        colorScheme:
        ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),

        useMaterial3: true,
      ),

      home: const LoginPage(),
    );
  }
}