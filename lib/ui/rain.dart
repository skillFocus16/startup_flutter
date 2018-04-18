import 'package:flutter/material.dart';

class RainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRain();
  }
}

class MakeItRain extends State<RainApp> {

  int _moneyCounter = 0;

  void rainMoney(){
    setState(() {
      _moneyCounter = _moneyCounter+100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Make it Rain!"),
          backgroundColor: Colors.lightGreen,
        ),
        body: new Container(
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Center(
                  child: new Text(
                    "Get Rich!",
                    style: new TextStyle(
                      fontSize: 30.5,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
                new Expanded(
                    child: new Center(
                  child: new Text(
                    '\$$_moneyCounter',
                    style: new TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 46.9,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                )),
                new Expanded(
                    child: new Center(
                  child: new FlatButton(
                    color: Colors.lightGreen,
                      textColor: Colors.white70,
                      onPressed: rainMoney,
                      child: new Text("Let it Rain!",
                        style: new TextStyle(
                            fontSize: 19.9),

                      ),
                  ),
                  /*this also works instead of FlatButton*/
                  /*new Container(
                    padding: new EdgeInsets.all(18.0),
                    decoration: new BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: new BorderRadius.circular(5.5),
                    ),
                    child: new Text("Let it Rain!"),
                  ),*/
                )),
              ],
            )));
  }
}
