
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fragment/AboutFargment.dart';
import 'Fragment/ContactFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';


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
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MY APP"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.account_box_sharp),
                text: "About",
              ),
              Tab(
                icon: Icon(Icons.email),
                text: "Email",
              ),
              Tab(
                icon: Icon(Icons.contact_phone_rounded),
                text: "Contact",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeFragent(),
            AboutFragment(),
            EmailFragment(),
            ContactFragment(),
          ],
        ),
      ),
    );
  }
}


// card widget
// body:Center(
//   child: Card(
//     color: Colors.yellow,
//     elevation: 10,
//     shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(10),
//     side: BorderSide(
//     color: Colors.black,
//     width: 2
//   )
// ),
// child: Container(
//     height: 150,
//     width: 300,
//     child: Text("Hello world"),
//     alignment: Alignment.center,
//     ),
//   ),
// )











