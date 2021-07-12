// import flutter helper library
// import 'widgets/converter.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

// Create class custom widget
class AppState extends State<App> {
  Widget build(context) {
    return MaterialApp(
      home: Text('converter'),
    );
  }
}
