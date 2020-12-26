import 'package:agricultural_market/ui/widgets/custome_masseges.dart';
import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:agricultural_market/utilies/custom_drawer.dart';
import 'package:flutter/material.dart';
class Masseges extends StatefulWidget {
  @override
  _MassegesState createState() => _MassegesState();
}

class _MassegesState extends State<Masseges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Messages'),
      endDrawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(top:22.0),
        child: ListView(
          children: [
            CustomListTile(),
            CustomListTile(),
            CustomListTile(),
            CustomListTile(),
            CustomListTile(),
            CustomListTile(),
            CustomListTile(),
          ],
        ),
      ),
    );
  }
}
