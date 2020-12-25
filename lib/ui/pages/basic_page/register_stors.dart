import 'package:agricultural_market/ui/widgets/custom_Raiseed.dart';
import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:agricultural_market/ui/widgets/text_form_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RigisterStores extends StatefulWidget {
  @override
  _RigisterStoresState createState() => _RigisterStoresState();
}

class _RigisterStoresState extends State<RigisterStores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar('Register Stores'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:12,bottom:2,right: 4,left: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Icon(
                           Icons.store,
                       color: Colors.black54,
                     ),
                    Padding(
                      padding: const EdgeInsets.only(top:4.0),
                      child: Text('Rigister Stores'),
                    )
                  ],
                ),
              ),
              Text('can your register your stor now'),
              SizedBox(height: 40,),
              TextFieldCutom(customHintText:'Name Stores'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Name User'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Password'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Email'),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(
                    Icons.location_on,color: Colors.green.shade400,
                  ),
                  Text('Select a moving site'),
                ],
              ),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Number Phone'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Logo Store',icon: Icon(Icons.file_upload,size: 34,color: Colors.white)),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Active Store'),
              SizedBox(height: 40,),
              GestureDetector(
                onTap:(){
                  Navigator.pushNamed(context, 'Parts');
                },
                child:Raised('SIGN IN'),
              ),

            ],
          ),
        ),
      ),
    );

  }


}
