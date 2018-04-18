import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  void _onpressed(){
    print("pressed through method....");
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


      /*other properties*/
      backgroundColor: Colors.grey.shade400,
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Hello Nemmy",
              style: new TextStyle(
                  fontSize: 14.5,
                  fontWeight: FontWeight.w400,
                  color: Colors.deepOrange),
            ),

            /*to make something tappable use inkWell*/
            new InkWell(
              child: new Text("button"),
              onTap: _onpressed,
            )
          ],
        ),
      ),


      /*floating button*/
      floatingActionButton: new FloatingActionButton(
        onPressed: ()=>debugPrint("clicking floating button"),
        backgroundColor: Colors.amber,
        tooltip: 'Going up!',
        child: new Icon(Icons.add),
      ),


      /*bottom navigators*/
      bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.add),
              title: new Text("Hey"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.print),
              title: new Text("Nope"),
            ),
              new BottomNavigationBarItem(
                icon: new Icon(Icons.call_missed),
                title: new Text("Missed calls"),
            ),
          ], onTap: (int i) => debugPrint("hey $i"),


      ),


    );
  }


}