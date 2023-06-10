
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
       home: HomeActivity(),
     );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnakeBar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  MyAlartDialog(context){
    return showDialog(
      context: context,
      builder: (context){
        return Expanded(
            child: AlertDialog(
              title: Text("Alart"),
              content: Text("Do you want to delete"),
              actions: [
                TextButton(onPressed: (){
                  MySnakeBar("Message delete success", context);
                  Navigator.of(context).pop();
                }, child: Text("Yes")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("No"))
              ],
            )
        );
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: (){ MySnakeBar("hellow i am jhon", context); },
                child: Text("Click me",
                style: TextStyle(   
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                  foregroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)
                  )

                )
            ),
            TextButton(
                onPressed: (){ MyAlartDialog(context); },
                child: Text("Click me"),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  //backgroundColor: Colors.black,
                  //padding: EdgeInsets.fromLTRB(30, 20, 30, 20)
              )
            )
          ],
        ),
      )
    );
  }

}