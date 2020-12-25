import 'package:flutter/material.dart';

AppBar CustomAppBar(String label){
  return AppBar(
    elevation: 0,
//    actions: [
//      IconButton(
//        icon: Icon(Icons.arrow_forward,color: Colors.white,size: 24,),
//      ),
//    ],
    backgroundColor: Colors.green,
    title: Center(child: Text(label,style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.w400),)),

  );
}