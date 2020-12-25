import 'package:agricultural_market/ui/widgets/custom_Raiseed.dart';
import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:agricultural_market/ui/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
class CallUS extends StatefulWidget {
  @override
  _CallUSState createState() => _CallUSState();
}

class _CallUSState extends State<CallUS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Call Us'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              TextFieldCutom(customHintText:'Email'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Number Phone'),
              SizedBox(height: 10,),
              TextFieldCutom(customHintText:'Title of the complaint'),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left:28.0),
                child: Text('Content Text'),
              ),
              SizedBox(height: 10,),
              TextFieldCutom(h: 100),
             SizedBox(height: 250,),
              Raised('Send'),
            ],
          ),
        ),
      ),
    );
  }

}
