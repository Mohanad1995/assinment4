import 'package:agricultural_market/repositories/provider.dart';
import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:agricultural_market/utilies/custom_drawer.dart';
import 'package:flutter/material.dart';
class Stores extends StatefulWidget {
  @override
  _StoresState createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Stores'),
      drawer: CustomDrawer(),
      body:ListView.builder(
        itemCount: stores.length,
          itemBuilder:(context,index){
            return  GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'Plant_Details');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 18,left:10 ),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 125,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: ExactAssetImage(stores[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:26,horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(stores[index].nameStore),
                              SizedBox(height: 12,),
                              Text(stores[index].dicriptionStore),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 38),
                      child: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: null
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
      ),

     
    );
  }
}
