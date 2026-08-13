import 'package:flutter/material.dart';

class SnackbarExample extends StatelessWidget {
   SnackbarExample({super.key});

  TextEditingController name = TextEditingController();
   TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: name,
          ),
          ElevatedButton(
              onPressed: (){

                //if(name.text == ""){
                if(name.text.isEmpty || password.text.isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 2),

                          content: Text("Incorrect username nigga")
                      )
                  );
                }
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          backgroundColor: Colors.blue,
                          duration: Duration(seconds: 2),

                          content: Text("Username: ${name.text}")
                      )
                  );
                }
              },
              child: Text("Snack Bar button")),
          ElevatedButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Nikal usko!!"),
                        content: Text("dont do it im yo homie"),
                        actions: [
                          TextButton(onPressed: (){}, child: Text("Yes")),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("No")),
                        ],
                      );
                    },
                );
              },
              child: Text("Alert Dialog")
          ),
          
          /*DropdownButton(
              items: [
                DropdownMenuItem(child: Text("Orange"))
              ], 

          )*/
        ],
      ),

    );
  }
}
