import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {

  int _bitchCounter = 0;

  void _bitchCounterAction() {
    setState(() {
      this._bitchCounter = this._bitchCounter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make It Rain"),
        backgroundColor: Colors.greenAccent,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child: new Text(
                "Rain Bitch",
                style: new TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 19.0,
                ),
              ),
            ),
            new Expanded(
              child: new Center(
                child: new Text(
                  "Bitch $_bitchCounter",
                  style: new TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            new Expanded(
                child: new Center(
                  child: new FlatButton(
                      color: Colors.amberAccent,
                      textColor: Colors.black,
                      onPressed: _bitchCounterAction,
                      child: new Text("Bring Me Bitch",
                          style: new TextStyle(
                            fontSize: 19.0
                          ),
                      )),
                )
            ),
          ],
        ),
      ),
    );
  }
}
