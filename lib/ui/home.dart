import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  void _onpressed(){
    print("searching....");
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: new Text("Fency day"),

        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.home),
              onPressed: () => debugPrint('working!!')),

          new IconButton(icon: new Icon(Icons.search),
              onPressed: _onpressed),

        ],
      ),
    );
  }


}