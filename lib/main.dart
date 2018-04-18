import 'package:demo_app/ui/gesture.dart';
import 'package:demo_app/ui/home.dart';
import 'package:demo_app/ui/rain.dart';
import 'package:demo_app/ui/welcome_home.dart';
import 'package:flutter/material.dart';

/*init app*/
/*
void main() => runApp(new MyApp());
*/
/*

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gestures',

//      home: new MyHomePage(title: 'Flutter Demo Home Page'),
//      home: new Welcome(),
//    home: new Home(),
    );
  }
}
*/

/*main method for the Gesture */
/*
void main() {
  var title = "Gesture";
  runApp(new MaterialApp(
    title: title,
    home: new Gesture(title:title,),
    )
  );

}*/

/*Make it RAIN App*/
void main(){
   runApp(new MaterialApp(
     home: new RainApp(),
    )
   );

}