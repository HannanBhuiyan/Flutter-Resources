
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
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AboutActivity("About page")));
              },
              child: Text("Go About")
          )
        ],
      )
    );
  }
}

class AboutActivity extends StatelessWidget {

  String msg;
  AboutActivity(
        this.msg,
       { super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(msg),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactActivity("this is contact")));
                },
                child: Text("go contact")
            )
          ],
        )
    );
  }
}

class ContactActivity extends StatelessWidget {
  String msg;
  ContactActivity(
    this.msg,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(msg),
        ),
        body: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Back Home")
            )
          ],
        )
    );
  }
}