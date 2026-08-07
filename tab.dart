import 'package:flutter/material.dart';
import 'package:mnv/dashboard.dart';
import 'package:mnv/login.dart';
import 'package:mnv/main.dart';

class tab_bar extends StatelessWidget {
  const tab_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Tab Bar"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Text("Home"),
              Text("Task"),
              Text("Profile"),
            ],
          ),
        ),
        body: TabBarView(
            children:[
              admin_dash(),login_page()
            ] ),
      ),
    );
  }
}
