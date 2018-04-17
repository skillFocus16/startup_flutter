import 'package:demo_app/ui/home.dart';
import 'package:demo_app/ui/welcome_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome App',

//      home: new MyHomePage(title: 'Flutter Demo Home Page'),
//      home: new Welcome(),
    home: new Home(),
    );
  }
}
