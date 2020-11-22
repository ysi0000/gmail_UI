import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailElement extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Column(

          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: 80.0,
                child: Text ("Title",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 25,decoration: TextDecoration.none),)
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text("Descripcion",
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 25,decoration: TextDecoration.none),)
            )
          ],
        ),
      ),
    );
  }
}