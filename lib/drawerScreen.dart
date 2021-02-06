import 'package:flutter/material.dart';
import 'package:myapp/configuration.dart';


class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      padding: EdgeInsets.only(top: 40,bottom: 70,left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("M Taris Syahir Zul Fahmi", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Text("Active Status", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
          Container(
            child:
            Align(
              child: Column(
                children: draweritems.map((element) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(element['icon'],color: Colors.white,size: 30,),
                      SizedBox(width: 10,),
                      Text(element['title'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                    ],
                  ),
                )).toList(),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.settings,color: Colors.white,),
              SizedBox(width: 10,),
              Text("Setting", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(width: 10,),
              Container(width: 2,height: 20,color: Colors.white,),
              SizedBox(width: 10,),
              Text("Logout", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            ],
          )
        ],
      ),

    );
  }
}
