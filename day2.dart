import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                //color and decoration cant be used together
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,//color should be inside of the decoration
                    borderRadius: BorderRadius.circular(40)
                ),
                //child: Text("Aloo"),

              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    //color and decoration cant be used together
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,//color should be inside of the decoration
                        borderRadius: BorderRadius.circular(40)
                    ),
                    //child: Text("Aloo"),

                  ),
                  Container(
                    height: 100,
                    width: 100,
                    //color and decoration cant be used together
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,//color should be inside of the decoration
                        borderRadius: BorderRadius.circular(40)
                    ),
                    //child: Text("Aloo"),

                  ),
                ],
              ),
              Container(
                height: 100,
                width: 100,
                //color and decoration cant be used together
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,//color should be inside of the decoration
                    borderRadius: BorderRadius.circular(40)
                ),
                //child: Text("Aloo"),

              ),
              Container(
                height: 100,
                width: 100,
                //color and decoration cant be used together
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,//color should be inside of the decoration
                    borderRadius: BorderRadius.circular(40)
                ),
                //child: Text("Aloo"),

              ),
            ],
          ),

          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                //color and decoration cant be used together
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,//color should be inside of the decoration
                    borderRadius: BorderRadius.circular(40)
                ),
                //child: Text("Aloo"),

              ),
              Container(
                height: 100,
                width: 100,
                //color and decoration cant be used together
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,//color should be inside of the decoration
                    borderRadius: BorderRadius.circular(40)
                ),
                //child: Text("Aloo"),

              ),
              Container(
                height: 100,
                width: 100,
                //color and decoration cant be used together
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,//color should be inside of the decoration
                    borderRadius: BorderRadius.circular(40)
                ),
                //child: Text("Aloo"),

              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                //color and decoration cant be used together
                decoration: BoxDecoration(
                    color: Colors.red,//color should be inside of the decoration
                    borderRadius: BorderRadius.circular(40)
                ),
                //child: Text("Aloo"),

              ),
              Container(
                height: 100,
                width: 100,
                //color and decoration cant be used together
                decoration: BoxDecoration(
                    color: Colors.green,//color should be inside of the decoration
                    borderRadius: BorderRadius.circular(40)
                ),
                //child: Text("Aloo"),

              ),
              Container(
                height: 100,
                width: 100,
                //color and decoration cant be used together
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,//color should be inside of the decoration
                    borderRadius: BorderRadius.circular(40)
                ),
                //child: Text("Aloo"),

              ),
            ],
          ),
        ],
      ),
      // body: Container(
      //   height: 100,
      //   width: 100,
      //   //color and decoration cant be used together
      //   decoration: BoxDecoration(
      //     color: Colors.deepPurpleAccent,//color should be inside of the decoration
      //     borderRadius: BorderRadius.circular(40)
      //   ),
      //   //child: Text("Aloo"),
      //
      // ),
    );
  }
}
