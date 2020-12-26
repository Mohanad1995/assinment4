import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:agricultural_market/utilies/custom_drawer.dart';
import 'package:flutter/material.dart';
class DetailsProduct extends StatefulWidget {
  @override
  _DetailsProductState createState() => _DetailsProductState();
}

class _DetailsProductState extends State<DetailsProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppBar('Details Product'),
            body: Column(
        children: [
          Container(
            height:MediaQuery.of(context).size.height*0.33,
            width: double.infinity,
            child: Image.asset('assets/images/1.jpg',fit: BoxFit.cover,),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 90,
              height: 35,
              color: Colors.green,
              child: Center(
                child: Text('5 \$',style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                ),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12,left: 26,top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Name Plant',style: TextStyle(color: Colors.black87,fontSize: 16),),
                SizedBox(height: 10,),
                Text('A paragraph is a series of related sentences developing a '
                    'central idea, called the topic. Try to think about paragraphs in terms of thematic unity',
                  style: TextStyle(color: Colors.black,fontSize: 16,letterSpacing: 1,height: 1.3),
                ),
              ],
            ),
          ),
          SizedBox(height: 48,),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: ExactAssetImage('assets/images/1.jpg'),
                ),
                SizedBox(width: 14,),
                Text('Name Store',style: TextStyle(fontSize: 16),)
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.email,color: Colors.orange,),label:''),
          BottomNavigationBarItem(icon: Icon(Icons.call,color: Colors.lightBlue,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.info_outline,color: Colors.red,),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.share,color: Colors.greenAccent,),label: ''),
        ],
      ),
      endDrawer: CustomDrawer(),
    );
  }
}
