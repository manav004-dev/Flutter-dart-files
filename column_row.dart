import 'package:flutter/material.dart';

class column_row extends StatelessWidget {
  const column_row({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Layout Design",
        style: TextStyle(color: Colors.black)),
        ),
      body: Column(
        children: [ 
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.rectangle
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 90,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.rectangle
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.rectangle
                  ),
                ),
              ),

            ],

          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 90,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.rectangle
                  ),
                ),
              ),

            ],

          )
      ],
    ),
    );
  }
}
