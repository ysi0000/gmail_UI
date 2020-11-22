import 'package:flutter/material.dart';
import 'package:gmail_ui/CustomDrawer.dart';
import 'package:gmail_ui/EmailElement.dart';
import 'package:gmail_ui/PaginaPrincipal.dart';
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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.api),
          onPressed: () {

          },

        ),
        drawer: CustomDrawer(),
          body: Material(
          color: Colors.white,
          child: PaginaPricipal()
    ),
      ),
    );
  }
}
