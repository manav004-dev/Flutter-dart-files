import 'package:flutter/material.dart';

class AD extends StatelessWidget {
  const AD({super.key});

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
            // 1. Profile Row
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue[100],
                    child: const Icon(Icons.person, color: Colors.blue),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Super Admin", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      Text("admin@example.com", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.history, color: Colors.grey),
                ],
              ),
            ),

            // 2. Stats Row
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

            // 3. Grid Menu
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: [
                _gridItem(Icons.people_alt, "Employee Management"),
                _gridItem(Icons.assignment_turned_in, "Task Management"),
                _gridItem(Icons.calendar_month, "Attendance Management"),
                _gridItem(Icons.bar_chart, "Expanse Tracking"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Simple UI block for each grid box
  Widget _gridItem(IconData icon, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40, color: Colors.blue[700]),
        const SizedBox(height: 8),
        Text(title, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}
