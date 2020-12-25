import 'package:flutter/material.dart';
Widget Raised(String title){
  return   Container(
    width:double.infinity,
    height: 55,
    decoration:BoxDecoration(
        color:Colors.green.shade400,
        borderRadius:BorderRadius.all(Radius.circular(50))
    ),
    child: Align(
      alignment: Alignment.center,
      child: Text(title,  style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18,
        letterSpacing: 1.1,
      ),),
    ),
  );
}