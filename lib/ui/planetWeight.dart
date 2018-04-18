import 'package:flutter/material.dart';

class PlanetWeight extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new Weight();
  }

}

class Weight extends State<PlanetWeight>{

  final TextEditingController _weightController = new TextEditingController();

  String weight;

  final String weightInit = "PLEase Enter Weight";

  void displayWeight(){
    if(_weightController.text.isNotEmpty){
      setState(() {
        weight = _weightController.text;
      });
    }else
      weightInit;
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Weight on PLanet X"),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
      ),

      backgroundColor: Colors.grey,

      body: new Center(
        child: new ListView(
          children: <Widget>[
            new Image.asset("images/face.png",
            width: 150.0,
            height: 150.0,
            color: Colors.pink,
            ),

            new Padding(padding: new EdgeInsets.all(10.5)),
            
            new Container(
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _weightController,
                    decoration: new InputDecoration(
                      hintText: "Your weight on Earth",
                      icon: new Icon(Icons.person),
                    ),
                  ),

              new Padding(padding: EdgeInsets.all(10.5)),

                  new Center(
                     child:  new Row(
                        children: <Widget>[
                            new Container(
                              margin: const EdgeInsets.only(left: 38.0),
                              
                             child: new Text("Hapaaa"),
                            )
                        ],
                      ),

                  ),

                  new Padding(padding: EdgeInsets.all(10.5)),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        "Your weight on Pluto is $weight",
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