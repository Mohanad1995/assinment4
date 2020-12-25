import 'package:agricultural_market/ui/widgets/custome_icons_abousapp.dart';
import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:flutter/material.dart';
class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => _AboutAppState();
}
class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar('AboutApp'),
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
            child: Text('Abou App',style: TextStyle(
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
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 26),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.green.shade400,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.call,color: Colors.white,),
                ),
                CustomIcons(Icons.call),
                SizedBox(width: 8,),
                CustomIcons(Icons.share),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
