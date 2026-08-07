import 'package:flutter/material.dart';

class b_Task extends StatelessWidget {
  const b_Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0,
        title: const Text(
          "Appointment",
          style: TextStyle(
            color: Color(0xff04281b),
          ),
        ),
      ),
      body: Column(
        children: [
          Card(
            color: const Color(0xff3a6154),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "OrderID",
                          style: TextStyle(color: Color(0xffe5a013)),
                        ),
                        Text(
                          "12345678",
                          style: TextStyle(color: Color(0xffffffff)),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Appointment Date",
                              style: TextStyle(color: Color(0xffe5a013)),
                            ),
                            Text(
                              "Saturday,March 7,2022",
                              style: TextStyle(color: Color(0xffffffff)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
