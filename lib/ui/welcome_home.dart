import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Container(
      color: Colors.greenAccent,

      alignment: Alignment.center,

      /*creating stacks*/
      /*child: new Stack(alignment: Alignment.bottomCenter,
        children: <Widget>[
          const Text("hello, there..."),
          const Text("hello again"),
          const Text("...okayy!")
        ],
      ),
*/


      /*creating rows*/
      /*child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text("Item 1", textDirection: TextDirection.ltr,
              style: new TextStyle(fontSize: 12.9,)
          ),
          new Text("Item 2", textDirection: TextDirection.ltr,
              style: new TextStyle(fontSize: 12.9,)
          ),
          
          const Expanded(child: const Text("Item3"))

        ],
      ),
*/

/*creating columns*/
      /*child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("First Item", textDirection: TextDirection.ltr, style: new TextStyle(color: Colors.white,),
            ),
            new Text("Second Item",
              textDirection: TextDirection.ltr,
              style: new TextStyle(color: Colors.blue,),
            ),
            new Container(color: Colors.deepOrange.shade50,
              alignment: Alignment.bottomLeft,
               child: new Center(
                child:  new Text("Third Item",
                   textDirection: TextDirection.ltr,
                   style: new TextStyle(color: Colors.white,),
                 ),
               )

            )
          ],
      ),*/


      /*child: new Text("Hello World!",
        textDirection: TextDirection.ltr,
        style: new TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 18.3,
        ),

      ),*/


    );


/*
    return new Material(
      color: Colors.blue,
      child: new Center(
        child: new Text("Hello, there",
          textDirection: TextDirection.ltr,
          style: new TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 34.5,
            fontStyle: FontStyle.italic,
          ),
        ),
      )
    );
*/

  }

}