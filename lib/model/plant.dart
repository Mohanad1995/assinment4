import 'package:flutter/cupertino.dart';

class Plant{
  String image;
  String price;
  String namePlant;
  Plant(this.image,this.price,this.namePlant);
}
class Plantpro{
  Plant plant;
  Widget Advertising;
  Plantpro({this.plant,this.Advertising});
}