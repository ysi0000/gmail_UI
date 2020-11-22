import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2,0.4],
                colors: [
                  Colors.orange,
                  Colors.white
                ],
              )
          ),
          child: Container()
      );
  }

}