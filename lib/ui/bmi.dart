import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BmiChallenge();
  }
}

class BmiChallenge extends State<BmiApp> {

  final TextEditingController _ageController = new TextEditingController();
  final TextEditingController _heightController = new TextEditingController();
  final TextEditingController _weightController = new TextEditingController();
  double _finalBMINo = 0.0;
  String _finalBMI = "";
  String status = "";


  void handleCal(){
    setState(() {
      _finalBMINo = calculateBMI(_weightController.text,_heightController.text,703.0);
      if(_finalBMINo < 5){
       status = "Underweight";
      }else{
        status = "OverWeight";
      }
      _finalBMI = "Your BMI ${_finalBMINo.toStringAsFixed(1)}";
      });
  }


  double calculateBMI(String weight, String height, double multiplier) {
    if(int.parse(weight).toString().isNotEmpty && int.parse(weight) >0){
      if(int.parse(height).toString().isNotEmpty && int.parse(height) >0){
       int doubleHeightFinal = (int.parse(height) * int.parse(height));
        print(doubleHeightFinal);
       double dividing =  int.parse(weight) / doubleHeightFinal;
        print(dividing);
        print(dividing*multiplier);
        return dividing * multiplier;
      }
    }else{
      print("EMPTY");
    }
    //return default planet
    return int.parse("180")*703.0;
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
                      controller: _ageController,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "Age",
                        hintText: "age",
                        icon: new Icon(Icons.person_outline),
                      ),
                    ),
                    new TextField(
                      controller: _heightController,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "Height in feet",
                        hintText: "",
                        icon: new Icon(Icons.insert_chart),
                      ),
                    ),
                    new TextField(
                      controller: _weightController,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        labelText: "Weight in lb",
                        hintText: "",
                        icon: new Icon(Icons.line_weight),
                      ),
                    ),
                    new Padding(padding: new EdgeInsets.all(10.5)),
                    new RaisedButton(
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
                    new Padding(padding: new EdgeInsets.all(5.5)),

                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.all(5.5)),

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Text(
                        _finalBMI,
                        style: new TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 25.5,
                            fontWeight: FontWeight.w500),
                      ),
                      new Text(
                        status,
                        style: new TextStyle(
                            color: Colors.pink.shade200,
                            fontSize: 29.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
