import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});
  List color=[Colors.red,Colors.blue,Colors.orange,Colors.red,Colors.red,Colors.blue,Colors.orange,Colors.red];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Example"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4
          ),
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.deepPurpleAccent,
              ),
            );
          }
      ),
      // body: GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 10,       // 4 columns
      //     mainAxisSpacing: 10,     // Vertical gap between items
      //     childAspectRatio: 1.0,   // for perfectly square
      //     crossAxisSpacing: 10,    // Horizontal gap between items
      //   ),
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0), // Outer padding for item 1
      //       child: Container(color: const Color(0xFF03D8F4)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0), // Outer padding for item 2
      //       child: Container(color: const Color(0xFFFA5432)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0), // Outer padding for item 3
      //       child: Container(color: const Color(0xFF03D8F4)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0), // Outer padding for item 4
      //       child: Container(color: const Color(0xFFFA5432)),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0), // Outer padding for item 5
      //       child: Container(color: const Color(0xFF03D8F4)),
      //     ),
      //     // Add more Padding widgets here as needed for your grid items...
      //   ],
      // ),
    );
  }
}
