// import flutter helper library
import 'package:counter/src/widgets/image_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

// Create class custom widget
class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    var response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
          // onPressed: () {
          //   setState(() {
          //     counter += 1;
          //   });
          // },
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