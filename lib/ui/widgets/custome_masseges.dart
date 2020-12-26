import 'package:flutter/material.dart';

CustomListTile(){
  return  ListTile(
    leading:CircleAvatar(
      radius: 30,
      backgroundImage: ExactAssetImage('assets/images/1.jpg'),
    ),
    title: Text('Mohaad Alattar'),
    subtitle: Text('hello mohanad alattar how are your'),
    trailing: Text('1:02'),
  );
}