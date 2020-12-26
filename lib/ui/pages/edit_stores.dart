import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:agricultural_market/ui/widgets/text_form_field_widget.dart';
import 'package:agricultural_market/utilies/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class EditStores extends StatefulWidget {
  @override
  _EditStoresState createState() => _EditStoresState();
}

class _EditStoresState extends State<EditStores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Edit Stores'),
      endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text('Edit Store '),
              ),
              SizedBox(height: 40,),
              TextFieldCutom(customHintText:'Name Stores'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Name User'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Password'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Email'),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 12),
                child: Text('Gaza , Palestine'),
              ),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Number Phone'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Logo Store',icon: Icon(Icons.file_upload,size: 34,color: Colors.white)),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Active Store'),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text('Quality of services provided to companies'),
              ),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Commercial activity'),
              SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Raised('Save',Colors.green.shade400),
                  Raised('Revision',Colors.black26),
                ],
              )

            ],
          ),
        ),
      ),
    );

  }
  Widget Raised(String label,Color color){
    return   Container(
      width:150,
      height: 50,
      decoration:BoxDecoration(
          color:color,
          borderRadius:BorderRadius.all(Radius.circular(50))
      ),
      child: InkWell(
        onTap: (){},
        child: Align(
          alignment: Alignment.center,
          child: Text(label,  style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            letterSpacing: 1.1,
          ),),
        ),

      ),
    );
  }
}
