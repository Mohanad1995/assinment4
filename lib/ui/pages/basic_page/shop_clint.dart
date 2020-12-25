import 'package:agricultural_market/ui/widgets/custome_container_shop_clint.dart';
import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Shop_Clint extends StatefulWidget {
  @override
  _Shop_ClintState createState() => _Shop_ClintState();
}

class _Shop_ClintState extends State<Shop_Clint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar('Register'),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    Transform.translate(
      offset: Offset(28,58),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('User New',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
        SizedBox(height: 8,),
        Text('can your register free',style:TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
      ],
      ),
    ),
      Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
           onTap:(){
          Navigator.pushNamed(context, 'RigisterStores');
              },
              child:  CustomContainer(Icons.store,'Stores'),
            ),

            SizedBox(height: 100,),
            GestureDetector(
              onTap:(){
                Navigator.pushNamed(context, 'RigisterUsers');
              },
              child:CustomContainer(Icons.supervised_user_circle,'Clints'),
            ),

            SizedBox(height: 100,),
          ],
        ),
      )
        ],
      )
    );
  }
}
