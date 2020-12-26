import 'package:agricultural_market/ui/widgets/custom_Raiseed.dart';
import 'package:agricultural_market/ui/widgets/cutom_appBar.dart';
import 'package:agricultural_market/ui/widgets/text_form_field_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AddAdvertisement extends StatefulWidget {
  @override
  _AddAdvertisementState createState() => _AddAdvertisementState();
}

class _AddAdvertisementState extends State<AddAdvertisement> {
  bool isAccepted = false;
  bool isAccepted1 = true;
  bool isAccepted2 = false;
  bool isAccepted3= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Add Advertisement'),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            TextFieldCutom(customHintText:'Name Stores'),
            SizedBox(height: 10,),
            TextFieldCutom(customHintText:'Logo Store',icon: Icon(Icons.camera_alt,size: 34,color: Colors.white)),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Text('A maximum of nine photos'),
            ),
            SizedBox(height: 10,),
            TextFieldCutom(customHintText:'price'),
            SizedBox(height: 10,),
            TextFieldCutom(customHintText:'Discription'),
            SizedBox(height: 30,),
            Text('Ad settings',
              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color: Colors.grey),),
            SizedBox(height: 5,),
            CustomCheckbox(),
            CustomCheckbox1(),
            CustomCheckbox2(),
            CustomCheckbox3(),
            SizedBox(height: 10,),
            Raised('Add'),
          ],
        ),
      ),
    );

  }
  Widget  CustomCheckbox(){
    return CheckboxListTile(
      title: Text('Allow internal advertisements'),
      value: isAccepted,
      onChanged: (value) {
        setState(() {
          this.isAccepted = value;
        });
      },
    );
  }
  Widget  CustomCheckbox1(){
    return CheckboxListTile(
      title: Text('Advertise without a phone number'),
      value: isAccepted1,
      onChanged: (value) {
        setState(() {
          this.isAccepted1 = value;
        });
      },
    );
  }
  Widget  CustomCheckbox2(){
    return CheckboxListTile(
      title: Text('Allow Do Not Disturb'),
      value: isAccepted2,
      onChanged: (value) {
        setState(() {
          this.isAccepted2 = value;
        });
      },
    );
  }
  Widget  CustomCheckbox3(){
    return CheckboxListTile(
      title: Text('Automatic Repost'),
      value: isAccepted3,
      onChanged: (value) {
        setState(() {
          this.isAccepted3 = value;
        });
      },
    );
  }

}
