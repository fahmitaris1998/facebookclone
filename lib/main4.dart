import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import './gradient_app_bar.dart';
import 'drawerScreen.dart';
import 'homeScreen.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var question = ['What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Navigation Animation",style: TextStyle(color: Colors.black),),
          ),
          body: Container(
            color: Colors.deepOrange,
            width: 420,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Great APP Fahm",
                  style: TextStyle(
                      color: Colors.white
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            color: Colors.white,
            backgroundColor: Colors.deepOrange,
            buttonBackgroundColor: Colors.white,
            height: 50,
            items: <Widget>[
              Icon(Icons.verified_user,size: 20,color: Colors.black,),
              Icon(Icons.add,size: 20,color: Colors.black,),
              Icon(Icons.list,size: 20,color: Colors.black,),
              Icon(Icons.favorite,size: 20,color: Colors.black,),
              Icon(Icons.exit_to_app,size: 20,color: Colors.black,),
            ],
            animationDuration: Duration(
                milliseconds: 300
            ),
            animationCurve: Curves.bounceInOut,
            index: 2,
            onTap: (index){
              debugPrint("Current index is $index");
            },
          ),
        ),
        debugShowCheckedModeBanner: false
    );
  }
}
