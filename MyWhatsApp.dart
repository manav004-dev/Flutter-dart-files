import 'package:flutter/material.dart';

class Whats_app extends StatelessWidget {
  const Whats_app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text("WhatsApp",style: TextStyle(
              color: Color.white,//fontWeight: FontWeight.bold
        ),
        ),
        Background
      ),
    );
  }
}
