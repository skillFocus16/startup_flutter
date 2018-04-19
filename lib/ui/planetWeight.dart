import 'package:flutter/material.dart';

class PlanetWeight extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Weight();
  }

}

class Weight extends State<PlanetWeight>{

  int radioValue = 0;
  double _finalResult = 0.0;
  String weight, _formattedText="";
  final TextEditingController _weightController = new TextEditingController();
  final String weightInit = "PLEase Enter Weight";

  void handleRadioValueChanged(int value){
    setState(() {
        radioValue = value;

        switch(radioValue){
          case 0:
            _finalResult = calculateWeight(_weightController.text,0.06);
            _formattedText = "Your weight on Pluto is ${_finalResult.toStringAsFixed(1)}";
            break;
          case 1:
            _finalResult = calculateWeight(_weightController.text,0.38);
            _formattedText = "Your weight on Mars is ${_finalResult.toStringAsFixed(1)}";
            break;
          case 2:
            _finalResult = calculateWeight(_weightController.text,0.91);
            _formattedText = "Your weight on Venus is ${_finalResult.toStringAsFixed(1)}";
            break;

        }
    });
  }

  /*useless here*/
  /*void displayWeight(){
    if(_weightController.text.isNotEmpty){
      setState(() {
        weight = _weightController.text;
      });
    }else
      weightInit;
  }*/

  double calculateWeight(String weight, double multiplier) {
    if(int.parse(weight).toString().isNotEmpty && int.parse(weight) >0){
      return int.parse(weight) * multiplier;
    }else{
      print("wrong");
    }
    //return default planet
    return int.parse("180")*0.38;
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Weight on PLanet X"),
        backgroundColor: Colors.black38,
        centerTitle: true,
      ),

      backgroundColor: Colors.blueGrey,

      body: new Center(
        child: new ListView(
          padding: EdgeInsets.all(2.5),
          children: <Widget>[
            new Image.asset("images/planet.png",
            width: 150.0,
            height: 150.0,
            color: Colors.blue.shade900,
            ),

            new Padding(padding: new EdgeInsets.all(10.5)),
            
            new Container(
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _weightController,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      labelText: "Your weight on Earth" ,
                      hintText: "in pounds",
                      icon: new Icon(Icons.person_outline),
                    ),
                  ),

              new Padding(padding: EdgeInsets.all(10.5)),

                  /*radio buttons*/
                  new Center(
                     child:  new Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Radio <int> (
                            activeColor: Colors.brown,
                              value: 0, groupValue: radioValue, onChanged: handleRadioValueChanged
                          ),
                          new Text(
                              "Pluto",
                          style: new TextStyle(
                              color:  Colors.white30),
                          ),
                          new Radio <int> (
                              activeColor: Colors.redAccent,
                              value: 1, groupValue: radioValue, onChanged: handleRadioValueChanged
                          ),
                          new Text(
                            "Mars",
                            style: new TextStyle(
                                color:  Colors.white30),
                          ),
                          new Radio <int> (
                              activeColor: Colors.orangeAccent,
                              value: 2, groupValue: radioValue, onChanged: handleRadioValueChanged
                          ),
                          new Text(
                            "Venus",
                            style: new TextStyle(
                                color:  Colors.white30),
                          ),

                        ],
                      ),

                  ),

                  new Padding(padding: EdgeInsets.all(10.5)),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        _weightController.text.isEmpty ? weightInit : _formattedText +"lbs",
                        style: new TextStyle(
                            color: Colors.white70,
                            fontSize: 20.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),




                ],
              ),

            )



          ],
        ),
      ),
    );
  }



}