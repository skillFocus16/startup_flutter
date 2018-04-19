import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BmiChallenge();
  }
}

class BmiChallenge extends State<BmiApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("BMI"),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        backgroundColor: Colors.white,
        body: new Center(
          child: new ListView(
            padding: EdgeInsets.all(10.5),
            children: <Widget>[
              new Image.asset(
                "images/bmilogo.png",
                height: 90.0,
                width: 90.0,
              ),
              new Container(
//                height: 250.0,
                color: Colors.blueGrey.shade100,
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "Age",
                        hintText: "age",
                        icon: new Icon(Icons.person_outline),
                      ),
                    ),
                    new TextField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "Height in feet",
                        hintText: "",
                        icon: new Icon(Icons.insert_chart),
                      ),
                    ),
                    new TextField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "Weight in lb",
                        hintText: "",
                        icon: new Icon(Icons.line_weight),
                      ),
                    ),
                    new Padding(padding: new EdgeInsets.all(10.5)),
                    new RaisedButton(
                      onPressed: () => debugPrint("pressing"),
                      color: Colors.pinkAccent.shade200,
                      child: new Text(
                        "Calculate",
                        style: new TextStyle(
                          fontSize: 19.5,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    new Padding(padding: EdgeInsets.all(10.5)),


                  ],
                ),
              )



            ],
          ),
        ));
  }
}
