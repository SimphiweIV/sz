import 'dart:io'show Platform, exit;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/services/asset_bundle.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'Screens/ChooseTeamScreen.dart';
import 'Screens/landScreen.dart';
import 'package:flutter/src/widgets/navigator.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter  ',
      theme: ThemeData(
            primarySwatch: Colors.purple,
      ),
      home:Builder(
        builder: (context) =>  Scaffold(
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
                child: Text('Start Playing'),
                color: Colors.deepPurple,
                textColor: Colors.white,
                onPressed: () async {
                  await Future.delayed(Duration(seconds: 3));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChooseTeam()),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.purple,
              width: 365,
              child: FlatButton(
                child: Text('Settings'),
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
                child: Text('Exit'),
                color: Colors.deepPurple,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
      ),
    ),
    ),
  );
}
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
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
              child: Text('Start Playing'),
              color: Colors.deepPurple,
              textColor: Colors.white,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChooseTeam()),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            color: Colors.purple,
            width: 365,
            child: FlatButton(
              child: Text('Settings'),
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
              child: Text('Exit'),
              color: Colors.deepPurple,
              textColor: Colors.white,
              onPressed: () {
                  SystemNavigator.pop();
                  exit(0);
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
/*

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 2;

  void _incrementCounter() {
    setState(() {

      _counter=_counter+2;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Leli bhathini usuliciphize kawwu :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),

          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  @override
  LandScreen createState() => LandScreen();
}
*/
