
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

  bool isShow = false;
  String text = "";

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
      body: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 40, 15.0, 30),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "First Name",
                    hintText: "Enter you first name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    prefixIcon: Icon(Icons.account_box_sharp),
                    labelStyle: TextStyle(
                     color: Colors.amberAccent,
                     fontSize: 17
                    ),
                    hintStyle: TextStyle(
                      color: Colors.amberAccent
                    ),
                    errorText: text.isEmpty?"Field is required":null,

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Last Name"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    prefixIcon: Icon(Icons.account_box_sharp)
                ),
                onChanged: (value){
                  text = value;
                },
              ) ,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Email"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.amberAccent,
                          width: 5.0,
                        )
                    ),
                    prefixIcon: Icon(Icons.email)
                ),
              ) ,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        isShow = !isShow;
                      });
                    },
                    icon: Icon(Icons.remove_red_eye),
                  )
                ),
                obscureText: isShow,
                obscuringCharacter: "*" ,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Confirm Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye)
                ),
                obscureText: true,
                obscuringCharacter: "*",
              ),
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Register"),
                  style: buttonStyle,
                )
            ),
          ],
        )
      )
    );
  }
}