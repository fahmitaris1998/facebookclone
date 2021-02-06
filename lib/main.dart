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

          body: Stack(
            children: <Widget>[
              DrawerScreen(),
              HomeScreen()
            ],
          )
        ),
        debugShowCheckedModeBanner: false
    );
  }
}
