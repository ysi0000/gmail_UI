import 'package:flutter/material.dart';
import 'package:gmail_ui/CustomDrawer.dart';
import 'package:gmail_ui/searchBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        drawer: CustomDrawer(),
          body: Material(
          color: Colors.white,
          child: Column(
            children: [
              SearchBar(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                alignment: Alignment.centerLeft,
                child: Text("Todas las bandejas".toUpperCase(),
                style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                ),
                ),
              ),
            ],
          )
    ),
      ),
    );
  }
}
