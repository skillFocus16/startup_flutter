import 'package:flutter/material.dart';

class Gesture extends StatelessWidget {
  final String title;

  /*Constructor*/
  Gesture({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue.shade400,
        title: new Text(title),
      ),
      body: new Center(
        child: new CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        final snackBar = new SnackBar(content: new Text("Hello Gestures.."),
//          backgroundColor: Colors.lightBlue,
            backgroundColor: Theme.of(context).backgroundColor,
            duration: new Duration(hours: 0, minutes: 0, seconds: 0, milliseconds: 3500, microseconds: 0),
        );

        Scaffold.of(context).showSnackBar(snackBar);
      },
      //actualButton
      child: new Container(
        padding: new EdgeInsets.all(18.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(5.5),
        ),
        child: new Text("First Button"),
      ),
    );
  }
}
