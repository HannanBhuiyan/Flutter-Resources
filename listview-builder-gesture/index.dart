
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

  var datas = [
    {
      "name" : "Hannan Bhuiyan",
      "img" : "https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg",
    },
    {
      "name" : "Mannan Bhuiyan",
      "img" : "https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg",
    },
    {
      "name" : "Shoma Bhuiyan",
      "img" : "https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg",
    },
    {
      "name" : "Roma Bhuiyan",
      "img" : "https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg",
    },
    {
      "name" : "Smit Bhuiyan",
      "img" : "https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg",
    },
    {
      "name" : "Marry Bhuiyan",
      "img" : "https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg",
    },
  ];

  MySnakebar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }


  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.amberAccent,
      minimumSize: Size(double.infinity, 50)
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Registration",
          style: TextStyle(
            fontSize: 20
          ),
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,

      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onLongPress: (){
                setState(() {
                    MySnakebar(datas[index]['name']!, context);
                });
              },
              child: Container(
                height: 200,
                margin: EdgeInsets.only(bottom: 20.0),
                width: 200,
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(datas[index]['img']!, fit: BoxFit.fill, width: 100, height: 100,),
                    Text(datas[index]['name']!)
                  ],
                ),
                
              ),
            );
          }
      )
    );
  }
}