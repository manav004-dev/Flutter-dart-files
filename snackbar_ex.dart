import 'package:flutter/material.dart';

class SnackbarExample extends StatelessWidget {
  const SnackbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green,
                      duration: Duration(seconds: 1),
                      
                      content: Text("heloooooo.......")
                  )
                );
              },
              child: Text("Snack Bar button"))
        ],
      ),

    );
  }
}
