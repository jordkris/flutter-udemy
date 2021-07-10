// import flutter helper library
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

// Create class custom widget
// ignore: must_be_immutable
class AppState extends State<App> {
  int counter = 0;
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
        ),
        appBar: AppBar(
          title: Text('Lets See Some Images!'),
        ),
      ),
    );
  }
}
//this class must extend 'StatlessWidget' base class

//the widgets that *this* widget will show