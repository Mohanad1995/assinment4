import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:flutter/material.dart';
class TermsConditions extends StatefulWidget {
  @override
  _TermsConditionsState createState() => _TermsConditionsState();
}
class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar('Terms and Conditions'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 200,
              height: 300,
              child: Image.asset('assets/images/3.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Text('Terms and Conditions',style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Colors.green,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0,top: 26),
            child: Text('paragraph is a series of related sentences developing a central idea, '
                'called the topic. Try to think about paragraphs in terms of thematic unity:',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.black87,
              height: 1.4,
            ),),
          ),

        ],
      ),
    );
  }
}
