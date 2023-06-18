

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sum_app/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: new ThemeData(scaffoldBackgroundColor: Colors.black),
       home: const HomePageActiveity(title: "Sum App"),
     );
  }
}

class HomePageActiveity extends StatefulWidget {
  const HomePageActiveity({super.key, required this.title});
  final String title;
  @override
  State<HomePageActiveity> createState() => _HomePageActiveityState();
}


class _HomePageActiveityState extends State<HomePageActiveity> {


  double finalResul = 0;

  Map<String, double> formValue = {"numberOne" : 0, "numberTwo": 0};


  formChangedValue(inputKey, inputValue) {
    setState(() {
      formValue.update(inputKey, (value) => double.parse(inputValue));
    });
  }

  sumAllInput(){
    setState(() {
      finalResul = formValue['numberOne']! + formValue['numberTwo']!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(

        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
             child: Column(
               children: [

                    Text("Total sum = ${finalResul}", style: resultStyle(context),),
                    SizedBox(height: 20.0),
                    TextField(
                         decoration: inputDecoration("Enter First Number"),
                         onChanged: (value) => {
                           formChangedValue("numberOne", value)
                       },
                      style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),

                     ),
                     SizedBox(height: 20.0),
                    TextField(
                     decoration: inputDecoration("Enter Second Number"),
                     onChanged: (value) => {
                       formChangedValue("numberTwo", value)
                     },
                     style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                    ),

                  SizedBox(height: 20.0),
                  Container(
                   width: double.infinity,
                   height: 60,
                   child: ElevatedButton(
                        child: Text("Add", style: TextStyle(fontSize: 20),),
                        onPressed: () => {
                          sumAllInput()
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)
                          )
                        ),
                     ),

                 )
               ],
             ),
          ),
        ],
      )

    );
  }
}