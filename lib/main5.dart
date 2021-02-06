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
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var question = ['What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
        home:  Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 2,
            height: 50.0,
            items: <Widget>[
              Icon(Icons.add, size: 30),
              Icon(Icons.list, size: 30),
              Icon(Icons.compare_arrows, size: 30),
              Icon(Icons.call_split, size: 30),
              Icon(Icons.perm_identity, size: 30),
            ],
            color: Colors.white,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.blueAccent,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 300),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
          ),
          body: Container(
            color: Colors.blueAccent,
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(_page.toString(), textScaleFactor: 10.0),
                  RaisedButton(
                    child: Text('Go To Page of index 1'),
                    onPressed: () {
                      final CurvedNavigationBarState navBarState =
                          _bottomNavigationKey.currentState;
                      navBarState.setPage(1);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false
    );
  }
}
