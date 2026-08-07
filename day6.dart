import 'package:flutter/material.dart';
import 'package:mnv/d2.dart';
import 'package:mnv/home.dart';
import 'package:mnv/login.dart';

import 'dashboard.dart';

class Daysix extends StatefulWidget {
  Daysix({super.key});

  @override
  State<Daysix> createState() => _DaysixState();
}

class _DaysixState extends State<Daysix> {
  int currentIndex=0;

  void onTap(int index){
    setState(() {
      currentIndex=index;
    });

  }
  List screens=[admin_dash(),login_page(),HomeScreen(),AD()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex:currentIndex ,

          items:[
            BottomNavigationBarItem(
                label: "tasks",
                icon: Icon(Icons.task)
            ),
            BottomNavigationBarItem(
                label: "user",
                icon: Icon(Icons.person)
            ),
            BottomNavigationBarItem(
                label: "followers",
                icon:Icon(Icons.people)
            )

          ]
      ),
    );
  }
}