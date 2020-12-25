import 'package:flutter/material.dart';
CustomIcons(IconData icon){
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      color: Colors.green.shade400,
      shape: BoxShape.circle,
    ),
    child: Icon(icon,color: Colors.white,),
  );
}