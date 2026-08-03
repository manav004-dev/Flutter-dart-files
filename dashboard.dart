import 'package:flutter/material.dart';

class admin_dash extends StatelessWidget {
  admin_dash({super.key});

  List name = [
    "Employee Management",
    "Task Management",
    "Attendance Management",
    "Expanse Tracking"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: const Text("Admin Dashboard", style: TextStyle(color: Colors.white)),
        actions: const [
          Icon(Icons.notifications, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.logout, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.people, color: Colors.teal),
                      Text("33", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Employees", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.check_circle, color: Colors.orange),
                      Text("46", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text("Tasks", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
