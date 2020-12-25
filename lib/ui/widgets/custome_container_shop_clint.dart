import 'package:flutter/material.dart';

CustomContainer(IconData icon,String label){
  return  Container(
    width: 150,
    height: 150,
    decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 22),
            child: IconButton(icon: Icon(icon,color: Colors.green.shade400,size: 55,),
              onPressed: null,),
          ),
          SizedBox(height: 20,),
          Text(label,style: TextStyle(fontSize: 22),),
          SizedBox(height: 20,),
        ],
      ),
    ),
  );
}