
import 'package:agricultural_market/repositories/part_provider.dart';
import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:agricultural_market/utilies/custom_drawer.dart';
import 'package:agricultural_market/utilies/onboardin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Parts extends StatefulWidget {
  @override
  _PartsState createState() => _PartsState();
}

class _PartsState extends State<Parts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppBar('Parts'),
        endDrawer: CustomDrawer(),
      body:Stack(
        children: [
         Padding(
           padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.27,left: 12),
           child: Text('Main Part',style:
           TextStyle(fontSize: 26,fontWeight: FontWeight.w500,color: Colors.black87),),
         ),
         Padding(
           padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.31,left: 12,),
           child: ListView.builder(
             scrollDirection: Axis.vertical,
             itemCount: parts.length,
             itemBuilder:(context,index){
               return  Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 12),
                 child: GestureDetector(
                   onTap: (){
                     Navigator.pushNamed(context, 'Plant_Details');
                   },
                   child: Container(
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(16),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Container(
                           width: 150,
                           height: 100,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.only
                               (topLeft: Radius.circular(15),
                                 bottomLeft: Radius.circular(15)
                             ),
                             image: DecorationImage(
                               image: ExactAssetImage(parts[index].image),
                               fit: BoxFit.cover,
                             ),
                           ),
                         ),
                         Transform.translate(
                           offset: Offset(85,0),
                             child: Text(parts[index].typePart,style: TextStyle(
                               fontSize: 18,
                               fontWeight: FontWeight.w500,
                             ),)
                         ),
                       ],
                     ),
                   ),
                 ),
               );
             },
           ),
         ),

          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*.27,
            child:OnboardingScreen(),
          ),
        ],
      )
    );
  }
}
