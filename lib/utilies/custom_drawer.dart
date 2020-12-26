import 'package:flutter/material.dart';
class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int val=2;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.green.shade400
              ),
              accountName: Text('Name Plant ',style: TextStyle(fontSize: 20),),
              accountEmail: Text('Plant',style: TextStyle(fontSize: 18),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: ExactAssetImage('assets/images/1.jpg'),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CutomRowWidget(Icons.circle, 'Lanuguge'),
                Padding(
                  padding: const EdgeInsets.only(top:10.0,right: 6,left: 8),
                  child: Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: val,
                    activeColor: Colors.red,
                    onChanged: (newValue){
                      setState(() {
                        val=newValue;
                      });
                    },
                  ),
                      Text('AR',style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.bold),),
                      Radio(
                        value:2,
                        groupValue: val,
                        activeColor: Colors.red,
                        onChanged: (newValue){
                          setState(() {
                            val=newValue;
                          });
                        },
                      ),
                      Text('ENG',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ],
                  ),
                )


              ],
            ),

            CustomDivider(),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'Masseges');
              },
              child:  CutomRowWidget(Icons.mail, 'Messages'),
            ),

            CustomDivider(),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'EditStores');
              },
              child:  CutomRowWidget(Icons.admin_panel_settings, 'Admin panel') ,
            ),

            CustomDivider(),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'Plant_Details');
              },
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CutomRowWidget(Icons.backpack, 'Products'),
                  Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Text('20',style: TextStyle(fontSize: 24,color: Colors.yellow),),
                  )
                ],
              ),
            ),

            CustomDivider(),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'CallUS');
              },
              child:  CutomRowWidget(Icons.call, 'Call Us'),
            ),


            CustomDivider(),
            SizedBox(height: 47,),
            CutomRowWidget(Icons.exit_to_app, 'Log Out', color: Colors.black),
            SizedBox(height: 9,),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText('About the App'),
                  CustomText('Terms and Conditions'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

CustomDivider(){
    return  Divider(color: Colors.black45, thickness: 2,);
}

  CustomText(String label){
    return  Text(label,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
   }

  CutomRowWidget(IconData icon,String label,{Color color}){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,),
      child: Row(
        children: [
          IconButton(icon: Icon(icon,size: 32,color:color !=null?color:Colors.white,), onPressed: null),
          SizedBox(width:4,),
          Text(label,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 19,
            ),
          ),
        ],
      ),
    );
  }
}
