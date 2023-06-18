

import 'dart:ui';
import 'package:flutter/material.dart';


TextStyle counterText(context) {
  return TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.bold
  );
}

TextStyle resultStyle(context) {
  return TextStyle(
    color: Colors.green,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );
}

InputDecoration inputDecoration(label) {
  return InputDecoration(
      labelText: label,
      // border: OutlineInputBorder(
      //   borderSide: BorderSide(width: 3, color: Colors.red), //<-- SEE HERE
      // ),

      fillColor: Colors.green,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(30, 15, 15, 30),
      labelStyle: TextStyle(color: Colors.white, fontSize: 20),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 5,
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(20.0)
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 5,
          color: Colors.yellow,
        )
      )
  );
}








