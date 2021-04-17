import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_expert_notes/BasicWidgets/mAppBar.dart';

enum e { a, n, c }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrientationList(title: "Grid..."),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;


  OrientationList({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:new mAppBar().myAppBar(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Create a grid with 2 columns in portrait mode, or 3 columns in
            // landscape mode.
            crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(100, (index) {
              return Center(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("bjkbjk"),
                            content: Icon(Icons.airplanemode_active),
                            elevation: 10,
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              side: BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid,
                                  width: 3),
                            ),
                            actions: [
                              ButtonBar(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.ac_unit),
                                    onPressed: () {
                                      Navigator.of(context).pop(true);
                                    },
                                  splashColor: Colors.white,
                                  ),
                                  IconButton(
                                      icon: Icon(Icons.ac_unit),
                                      onPressed: () {}),
                                  IconButton(
                                      icon: Icon(Icons.ac_unit),
                                      onPressed: () {}),
                                  IconButton(
                                      icon: Icon(Icons.ac_unit),
                                      onPressed: () {}),
                                  IconButton(
                                      icon: Icon(Icons.ac_unit),
                                      onPressed: () {}),
                                ],
                              )
                            ],
                          );
                        });
                  },
                  child: Container(

                    decoration: BoxDecoration(
                        color: Colors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    height: 100,
                    width: 100,

                    child: Center(child: Text(index.toString(),style: TextStyle(fontSize: 45),)),

                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
