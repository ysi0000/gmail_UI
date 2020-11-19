import 'package:flutter/material.dart';
import 'package:gmailui/searchBar.dart';

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
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: DrawerHeader(
                  child: Text('Gmail',style: TextStyle(color:Colors.red,fontSize: 18),),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text('Todas las bandejas'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('Recibidos'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Text('No leidos'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
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
