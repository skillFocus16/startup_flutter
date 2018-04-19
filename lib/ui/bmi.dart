import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BmiState();
  }
}

class BmiState extends State<BmiApp> {
  final TextEditingController _ageController = new TextEditingController();
  final TextEditingController _heightController = new TextEditingController();
  final TextEditingController _weightController = new TextEditingController();
  double _result = 0.0, inches = 0.0;
  String finalBMI = "";
  String status = "";

  void handleCal() {
    setState(() {
      int age = int.parse(_ageController.text);
      double height = double.parse(_heightController.text);
      //converting height to inches
      inches = height * 12;
      double weight = double.parse(_weightController.text);

      if ((_ageController.text.isNotEmpty || age > 0) &&
          (_heightController.text.isNotEmpty || inches > 0) &&
          (_weightController.text.isNotEmpty || weight > 0)) {

        _result = weight / (inches * inches) * 703;

          if (double.parse(_result.toStringAsFixed(1)) < 18.5) {
            status = "Underweight";
          }  else if ( double.parse(_result.toStringAsFixed(1)) >=  18.5 && _result < 24.9) {
            status = "Normal";
          } else if (  double.parse(_result.toStringAsFixed(1)) >=  25.0 && _result < 29.9){
            status = "Overweight";
          } else {
            status = "Obese";
          }
      } else {
        _result = 0.0;
      }
    });
    finalBMI = "Your BMI ${_result.toStringAsFixed(1)}";

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("BMI"),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
        ),
        backgroundColor: Colors.white,

/*you can start this way*/
/*
        body: new Container(
          alignment: Alignment.center,
          child: new ListView(
          padding: const EdgeInsets.all(2.5),
          children: <Widget>[
          new Image.asset(''),
          .
          .t
          and so on
          ],
          ),
        )
*/

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
                margin: const EdgeInsets.all(3.0),
                height: 245.0,
                width: 290.0,
                color: Colors.grey.shade300,
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      controller: _ageController,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "Age",
                        hintText: "eg 34",
                        icon: new Icon(Icons.person_outline),
                      ),
                    ),
                    new TextField(
                      controller: _heightController,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "Height in feet",
                        hintText: "eg 2.5",
                        icon: new Icon(Icons.insert_chart),
                      ),
                    ),
                    new TextField(
                      controller: _weightController,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "Weight in lb",
                        hintText: "eg 5.5",
                        icon: new Icon(Icons.line_weight),
                      ),
                    ),
                    new Padding(padding: new EdgeInsets.all(10.5)),
                    new Container(
                      alignment: Alignment.center,
                      child: new RaisedButton(
                        onPressed: handleCal,
                        color: Colors.pinkAccent.shade200,
                        child: new Text(
                          "Calculate",
                          style: new TextStyle(
                            fontSize: 19.5,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    new Padding(padding: new EdgeInsets.all(5.5)),
                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.all(5.5)),
/*
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[*/
              new Column(
                children: <Widget>[
                  new Text(
                    finalBMI,
//                    "Your BMI: ${_result.toStringAsFixed(1)}",
                    style: new TextStyle(
                        color: Colors.blueAccent,
                        fontStyle: FontStyle.italic,
                        fontSize: 25.5,
                        fontWeight: FontWeight.w500),
                  ),
                  new Padding(padding: EdgeInsets.all(5.5)),
                  new Text(
                    status,
                    style: new TextStyle(
                        color: Colors.pink.shade200,
                        fontSize: 29.5,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
//                ],
//              ),
            ],
          ),
        ));
  }
}
