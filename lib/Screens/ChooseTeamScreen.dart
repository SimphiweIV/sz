import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseTeam extends StatelessWidget {

const ChooseTeam({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  bool show = true; //bool value to track show and hide for widget.

  return MaterialApp(
      title: 'Flutter  ',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home:  Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('30 Second Game'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.purple,
              width: 365,
              height: 300,
              padding: EdgeInsets.all(0),
              child: Image.asset('images/Capture.PNG',height: 300, ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.purple,
              width: 365,

              child: FlatButton(
                child: Text('TEAM A'),
                color: Colors.deepPurple,
                textColor: Colors.white,
                onPressed: () {
                   show = true; //bool value to track show and hide for widget.
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.purple,
              width: 365,
              child: FlatButton(
                child: Text('TEAM B'),
                color: Colors.deepPurple,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.purple,
              width: 365,
              child: FlatButton(
                child: Text('REFEREE'),
                color: Colors.deepPurple,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}