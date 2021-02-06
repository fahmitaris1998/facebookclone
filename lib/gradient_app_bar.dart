import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget implements PreferredSizeWidget{
  final double _pw = 100.0;

  String title;
  Color gradientBegin, gradientEnd;

  GradientAppBar({@required this.title,@required this.gradientBegin,@required this.gradientEnd});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _pw,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            gradientBegin,
            gradientEnd
          ]
        )
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 10.0,
          fontSize: 30.0,
          fontWeight: FontWeight.w700
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}