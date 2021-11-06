import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  final String id = "home_page";

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.grey[850]!,
            Colors.grey[700]!,
            Colors.grey[600]!,
          ]),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 80.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Welcome",
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  color: Colors.white
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 80.0,),
                      // textfield panel
                      Container(
                        margin: EdgeInsets.only(left: 30.0, right: 30.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 7.0),
                              blurRadius: 20.0,
                            )
                          ]
                        ),
                         child: Column(
                           children: [
                             _widgetTxtFil("Fullname"),
                             _widgetTxtFil("Email"),
                             _widgetTxtFil("Phone"),
                             _widgetTxtFil("Password", 2),
                           ],
                         ),
                      ),
                      SizedBox(height: 30.0,),
                      // signup grey button
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 75.0, right: 75.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[700]!,
                          borderRadius: BorderRadius.circular(30.0)
                        ),
                        child: MaterialButton(
                          onPressed: (){},
                          child: Text("SignUp", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Text(
                        "Sign Up with SNS",
                        style: TextStyle(color: Colors.grey, letterSpacing: 1.1),
                      ),
                      SizedBox(height: 30.0,),
                      // with sign up last buttons
                      Padding(
                        padding: EdgeInsets.only(right: 10.0, left: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            _widgetContainer(Colors.blue, "facebook"),
                            _widgetContainer(Colors.red, "Google"),
                            _widgetContainer(Colors.black, "Apple"),
                          ],
                        ),
                      )


                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget _widgetContainer(color, name) {
  return Container(
    width: (MediaQuery.of(context).size.width / 3) - 20,
    padding: EdgeInsets.only(left: 10.0, right: 10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50.0),
      color: color,
    ),
    child: TextButton(
      onPressed: () {},
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}

// Textfield maker function
Widget _widgetTxtFil(String name, [int isBorder = 0]) {
  if (isBorder > 0){
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          )

      ),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: name,
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200]!))),
    child: Padding(
      padding: const EdgeInsets.all(9.0),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: name,
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    ),
  );
}
}
