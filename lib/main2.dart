import 'package:flutter/material.dart';

import './gradient_app_bar.dart';
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
        appBar: _appbarscus(),
        body: Column(
          children: [
          Text(question[1]),
          RaisedButton(child: Text('Hijau'), onPressed: null,),
          RaisedButton(child: Text('Biru'), onPressed: null,),
          RaisedButton(child: Text('Merah'), onPressed: null,),
        ],)
      ),
        debugShowCheckedModeBanner: false
    );
  }

  _appbarscus(){
    return PreferredSize(
      preferredSize: Size.fromHeight((50)),
      child: Container(
        alignment: Alignment.bottomCenter,
        
        decoration: BoxDecoration(

          borderRadius: new BorderRadius.only(
            bottomLeft: const Radius.circular(5.0),
            bottomRight: const Radius.circular(5.0)
          ),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.centerRight,
            colors: [
              Colors.blueAccent,
              Colors.redAccent
            ]
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.menu), onPressed: () {},),
            Text('Webinar',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
            IconButton(icon: Icon(Icons.notifications),onPressed: (){},),
          ],
        ),
      ),
    );
  }
}
