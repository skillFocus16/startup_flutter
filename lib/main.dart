import 'package:demo_app/ui/bmi.dart';
import 'package:demo_app/ui/gesture.dart';
import 'package:demo_app/ui/home.dart';
import 'package:demo_app/ui/login.dart';
import 'package:demo_app/ui/planetWeight.dart';
import 'package:demo_app/ui/rain.dart';
import 'package:demo_app/ui/welcome_home.dart';
import 'package:flutter/material.dart';

/*INIT APP*/
/*
void main() => runApp(new MyApp());

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


/*main method for the GESTURE */
/*
void main() {
  var title = "Gesture";
  runApp(new MaterialApp(
    title: title,
    home: new Gesture(title:title,),
    )
  );

}*/

/*MAKE IT RAIN APP*/
/*
void main(){
   runApp(new MaterialApp(
     home: new RainApp(),
    )
   );

}*/

/*lOGIN PAGE*/
/*
void main(){
  runApp(new MaterialApp(
    title: "Login",
    home: new Login(),
  )
  );
}*/

/*Weight on Earth App*/
/*
void main(){
  runApp(new MaterialApp(
    title: "Weight on Planet X",
    home: new PlanetWeight(),
    )
  );
}*/

/*BMI App Challenge*/
void main(){
  runApp(new MaterialApp(
    title: "BMI",
    home: new BmiApp(),
  )
  );
}