//import 'dart:js';
import 'package:agricultural_market/model/store_model.dart';
import 'package:agricultural_market/ui/pages/add_advertisement.dart';
import 'package:agricultural_market/ui/pages/basic_page/about_app.dart';
import 'package:agricultural_market/ui/pages/basic_page/call_us.dart';
import 'package:agricultural_market/ui/pages/basic_page/register_stors.dart';
import 'package:agricultural_market/ui/pages/basic_page/register_users.dart';
import 'package:agricultural_market/ui/pages/basic_page/shop_clint.dart';
import 'package:agricultural_market/ui/pages/basic_page/splach.dart';
import 'package:agricultural_market/ui/pages/basic_page/terms_conditions.dart';
import 'package:agricultural_market/ui/pages/details_product.dart';
import 'package:agricultural_market/ui/pages/edit_stores.dart';
import 'package:agricultural_market/ui/pages/massege.dart';
import 'package:agricultural_market/ui/pages/parts.dart';
import 'package:agricultural_market/ui/pages/plant_page.dart';
import 'package:agricultural_market/ui/pages/stores.dart';
import 'package:flutter/material.dart';
Map<String,WidgetBuilder> routs= {
  '/':(context)=>Home (),
  'Rigester':(context)=>Shop_Clint (),
  'RigisterStores':(context)=>RigisterStores(),
  'RigisterUsers':(context)=>RigisterUsers(),
  'Parts':(context)=>Parts(),
  'Stores':(context)=>Stores(),
  'Plant_Details':(context)=>Plant_Details(),
  'DetailsProduct':(context)=>DetailsProduct(),
  'EditStores':(context)=>EditStores(),
  'AboutApp':(context)=>AboutApp(),
  'CallUS':(context)=>CallUS(),
  'TermsConditions':(context)=>TermsConditions(),
  'AddAdvertisement':(context)=>AddAdvertisement(),
  'Masseges':(context)=>Masseges(),
};