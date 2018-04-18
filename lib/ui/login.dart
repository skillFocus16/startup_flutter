import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  String _displayName;

  void display() {
    setState(() {
      if(_userController.text.isNotEmpty ){
        _displayName = _userController.text;
      }else{
        _displayName = " ...";
      }
    });
  }

  void clear() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("Login"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        backgroundColor: Colors.blueGrey,
        body: new Center(
          child: new Column(
            children: <Widget>[
              /*adding image profile*/
              new Image.asset(
                "images/face.png",
                width: 90.0,
                height: 90.0,
                color: Colors.amberAccent,
              ),
              new Container(
                height: 180.0,
                width: 380.0,
                color: Colors.white70,
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      controller: _userController,
                      decoration: new InputDecoration(
                        hintText: "Username",
                        icon: new Icon(Icons.person),
                      ),
                    ),
                    new TextField(
                      controller: _passwordController,
                      decoration: new InputDecoration(
                        hintText: "Password",
                        icon: new Icon(Icons.lock),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(10.5),
                    ),
                    new Center(
                      child: new Row(
                        children: <Widget>[
                          new Container(
                            margin: const EdgeInsets.only(left: 38.0),
                            child: new RaisedButton(
                              onPressed: display,
                              color: Colors.redAccent,
                              child: new Text(
                                "Login",
                                style: new TextStyle(
                                    color: Colors.white70, fontSize: 16.5),
                              ),
                            ),
                          ),
                          new Container(
                            margin: const EdgeInsets.only(left: 80.0),
                            child: new RaisedButton(
                              onPressed: clear,
                              color: Colors.redAccent,
                              child: new Text(
                                "Clear",
                                style: new TextStyle(
                                    color: Colors.white70, fontSize: 16.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              new Padding(
                padding: new EdgeInsets.all(10.5),
              ),

              /*this soooo works..yayyy! name is displayed*/
              /*
            new Text('\hi $_displayName',
              style: new TextStyle(
                  color: Colors.white70,
                  fontSize: 35.5  ),
            ),*/

              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Welcome, $_displayName\!",
                    style: new TextStyle(
                        color: Colors.white70,
                        fontSize: 35.5,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
