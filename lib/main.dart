import 'file:///D:/agricultural_market/lib/ui/pages/basic_page/about_app.dart';
import 'package:agricultural_market/ui/pages/add_advertisement.dart';
import 'file:///D:/agricultural_market/lib/ui/pages/basic_page/call_us.dart';
import 'package:agricultural_market/ui/pages/details_product.dart';
import 'package:agricultural_market/ui/pages/edit_stores.dart';
import 'package:agricultural_market/ui/pages/parts.dart';
import 'package:agricultural_market/ui/pages/plant_page.dart';
import 'file:///D:/agricultural_market/lib/ui/pages/basic_page/register_stors.dart';
import 'file:///D:/agricultural_market/lib/ui/pages/basic_page/register_users.dart';
import 'file:///D:/agricultural_market/lib/ui/pages/basic_page/shop_clint.dart';
import 'package:agricultural_market/ui/pages/stores.dart';
import 'file:///D:/agricultural_market/lib/ui/pages/basic_page/terms_conditions.dart';
import 'package:agricultural_market/utilies/custom_drawer.dart';
import 'package:agricultural_market/utilies/onboardin.dart';
import 'package:agricultural_market/utilies/routs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routs,
      initialRoute: '/',
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

    );
  }
}

