import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return SafeArea(
  child: Align(
    alignment: Alignment.topCenter,
    child: Container(
      height: 50,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 1.5,
              color: Colors.grey[300],
            ),
          ]
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap:() {
              Scaffold.of(context).openDrawer();
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: new Icon(Icons.dehaze,color: Colors.grey[700],)
            ),
          ),
          new Expanded(child:
            new TextField(
              decoration: InputDecoration(
                hintText: "Buscar en el correo",
                enabledBorder: InputBorder.none,
              ),
            )
          ),//Padding
          new Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: new DecorationImage(
                    image: NetworkImage('https://picsum.photos/250?image=9')
                ),
              ),
              padding: const EdgeInsets.all(15)
            //child: new Image.network('https://picsum.photos/250?image=9'),
          ),
        ],
      ),
    ),
  ),
);
  }

}