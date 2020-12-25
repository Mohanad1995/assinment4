import 'package:agricultural_market/ui/widgets/custom_text_splach.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 400,
              child: Image.asset('assets/images/3.png'),
            ),
          ),
          Transform.translate(
            offset: Offset(0, 140),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'Rigester');
                    },
                    child: CustomText('Rigister'),
                  ),

                  CustomText('Skipe'),
                ],),
            ),
          )

        ],
      ),
    );
  }

}
