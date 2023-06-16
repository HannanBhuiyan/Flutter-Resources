
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
      body: Center(
        child:  Card(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Center(child: Text("My Card"),),
          ),
          color: Color.fromRGBO(127, 17, 224, 1), 
          margin: EdgeInsets.all(50),
          shadowColor: Color.fromRGBO(127, 17, 224, 1),
          elevation: 80,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(
                  width: 10,
                  color: Colors.red
              )
          ),
        ),
      )
    );
  }
}

