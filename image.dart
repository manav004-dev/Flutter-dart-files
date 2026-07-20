import 'package:flutter/material.dart';

class imageExample extends StatelessWidget {
  const imageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage("assets/images/monkey.jpg"),
        ),
        backgroundColor: Colors.amberAccent,
        title: const Text(
          "Image example",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              
              Center(
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa-Qsh1WAATc2GR1kV6KXgKChXcfB0vVnWGa6zrjoiBQ&s=10"))
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkFThX00IcUxEEDcVePfFdjh1e9QFQXjjeveUwdfTm1g&s=10"),

              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("assets/images/images.jpg", height: 300,width: 500,),
              ),

              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR71WoV_KEKgm9MwJ8bkjfF5EdXrEig1Z929qanHDQdjg&s=10",
                height: 250, width: 400, fit: BoxFit.fill,// cover: for streching the image
              )
            ],
          )
      ),

    );
  }
}
