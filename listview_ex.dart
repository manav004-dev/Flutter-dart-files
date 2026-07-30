import 'package:flutter/material.dart';

class listview_example extends StatelessWidget {
  listview_example({super.key});
  List color = [Colors.green,Colors.red, Colors.purple, Colors.green, Colors.orange];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (context,index){
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                height: 80,
                width: 1000,
                color: color[index],
                child: Text("$index"),
              ),
            ),
          );
        },
      ),
    );
  }
}
