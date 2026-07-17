import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("IRCTC",
          style: TextStyle(color: Colors.red)),
        centerTitle: true,
        leading: Icon(
          Icons.account_box,
          color: Colors.red,
          size: 40,
        ),
      ),
    );


  }


}





