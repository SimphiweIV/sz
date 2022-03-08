import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp( home: MyApp(),)
  );
}

class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool show = true; //bool value to track show and hide for widget.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("Hide/Show Widget"),
            backgroundColor: Colors.deepPurpleAccent
        ),
        body: Container(
            padding: EdgeInsets.all(15),
            child: Column(
                children:[

                  show?Container( //check if show == true, if true, then show container
                    height: 150,
                    color: Colors.lightBlue,
                  ):Container(), //if show == false, show empty container.

                  Divider(),

                  ElevatedButton(
                      onPressed:(){
                        setState(() { //refresh UI and make show = false
                          show = false;
                        });
                      },
                      child: Text("Hide Box")
                  ),

                  ElevatedButton(
                      onPressed:(){
                        setState(() { //refresh UI and make show = true;
                          show = true;
                        });
                      },
                      child: Text("Show Box")
                  )

                ]
            )
        )
    );
  }
}