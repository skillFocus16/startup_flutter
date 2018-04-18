import 'package:flutter/material.dart';

class Gesture extends StatelessWidget{

  final String title;


  /*Constructor*/
  Gesture({Key key,this.title}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

          appBar: new AppBar(
            backgroundColor: Colors.deepOrange.shade400,
            title: new Text(title),

            ),
          body: new Center(
           // child: new customButton(),
          ),
    );

  }


}

class customButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(

    );
  }



}