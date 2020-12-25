import 'package:agricultural_market/ui/widgets/custom_Raiseed.dart';
import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:agricultural_market/ui/widgets/text_form_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RigisterUsers extends StatefulWidget {
  @override
  _RigisterUsersState createState() => _RigisterUsersState();
}

class _RigisterUsersState extends State<RigisterUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Register Users'),
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
                      child: Text('Rigister Users'),
                    )
                  ],
                ),
              ),
              Text('can your register your now'),
              SizedBox(height: 120,),
              TextFieldCutom(customHintText:'Name Users'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Password'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Email'),
              SizedBox(height: 10,),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Number Phone'),
              SizedBox(height: 80,),
              GestureDetector(
                onTap:(){
                  Navigator.pushNamed(context,'Parts');
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
