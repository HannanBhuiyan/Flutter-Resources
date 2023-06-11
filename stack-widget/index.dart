 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyAPP());
}


class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: HomeActivity(),
     );
  }
}

class HomeActivity extends StatefulWidget {


  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Stack",
          style: TextStyle(
            fontSize: 20
          ),
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,

      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              width: 400,
              height: 400,
              color: Colors.black,

            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 115,
                height: 115,
                color: Colors.amberAccent,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 115,
                height: 115,
                color: Colors.red,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Column(
                children: [
                  Container(
                    width: 115,
                    height: 120,
                    color: Colors.green,
                  ),
                ],
              )
            ),

            Positioned(
                bottom: 0,
                left: 115,
                child: Column(
                  children: [
                    Container(
                      width: 30,
                      height: 20,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.5, color:Colors.black)
                        )
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 20,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 1.5, color:Colors.red)
                          )
                      ),
                    ),
                    Container(
                      width: 30,
                      height: 20,
                      color: Colors.white,
                    ),
                    Container(
                      width: 30,
                      height: 20,
                      color: Colors.white,
                    ),
                    Container(
                      width: 30,
                      height: 20,
                      color: Colors.white,
                    ),
                    Container(
                      width: 30,
                      height: 20,
                      color: Colors.white,
                    ),

                  ],
                )
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 115,
                height: 115,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              child: Container(
                width: 115,
                height: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.deepPurple,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}