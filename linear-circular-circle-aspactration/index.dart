
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        color: Colors.red,
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 16/6,
          child: Container(
            color: Colors.green,
          ),
        ),
      )
    );
  }
}

// child: CircularProgressIndicator(
// color: Colors.red,
// strokeWidth: 10,
// )

// child: LinearProgressIndicator(
// color: Colors.red,
// backgroundColor: Colors.yellow,
// minHeight: 10,
//
// )