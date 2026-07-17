import 'package:flutter/material.dart';

class cr extends StatelessWidget {
  const cr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        title: const Text(
          "Layout Design",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //TOP
            Row(
              children: [
                // Red Rectangle
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    width: 70,
                    color: Colors.red,
                  ),
                ),

                // Two Blue Rectangles
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 180,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 180,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),

                // Two Yellow Circles
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),

                // Green Rectangle
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    width: 70,
                    color: Colors.green,
                  ),
                ),
              ],
            ),

            //Purple Bar 1

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: double.infinity,
                color: Colors.purple,
              ),
            ),

            //Purple Bar 2

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: double.infinity,
                color: Colors.purple,
              ),
            ),

            const SizedBox(height: 20),

            //Bottom

            Row(
              children: [
                // Grey Boxes
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        height: 80,
                        width: 200,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        height: 80,
                        width: 200,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

                // Small Red Boxes
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        height: 70,
                        width: 50,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        height: 80,
                        width: 50,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),

                // Blue Boxes
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        height: 80,
                        width: 140,
                        color: Colors.blue,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        height: 80,
                        width: 140,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),

                // Black Boxes
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        height: 90,
                        width: 60,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6),
                      child: Container(
                        height: 90,
                        width: 60,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}