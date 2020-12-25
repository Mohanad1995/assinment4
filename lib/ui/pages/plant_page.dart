import 'package:agricultural_market/repositories/Plantpro_provider.dart';
import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:agricultural_market/utilies/custom_drawer.dart';
import 'package:flutter/material.dart';
class Plant_Details extends StatefulWidget {
  @override
  _Plant_DetailsState createState() => _Plant_DetailsState();
}

class _Plant_DetailsState extends State<Plant_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade200,
      appBar: CustomAppBar('Plant Details'),
      drawer: CustomDrawer(),
      body:Padding(
        padding: const EdgeInsets.only(top: 18),
        child: GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            mainAxisSpacing: 10,
            children: provid.map((e) => Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'DetailsProduct');
                  },
                  child: Container(
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),

                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12)),
                              image: DecorationImage(
                                image: ExactAssetImage(e.plant.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:12.0,top: 8,bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(e.plant.namePlant),
                                SizedBox(height:6,),
                                Text(e.plant.price,style: TextStyle(color: Colors.red),),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )).toList()
        ),
      ),

     floatingActionButton: FloatingActionButton(
       backgroundColor: Colors.orange,
        onPressed: null,
      child: Icon(Icons.add,size: 32,),
     ),

    );
  }
}
