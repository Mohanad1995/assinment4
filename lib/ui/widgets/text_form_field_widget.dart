import 'package:flutter/material.dart';
OutlineInputBorder _inputBorder=OutlineInputBorder(
    borderSide: BorderSide(width: 1,color: Colors.black54),
    borderRadius: BorderRadius.all(Radius.circular(15))
);
TextFieldCutom({String customHintText,Icon icon,double h}){
  return Container(
    height: h != null ? h : 50,
    child: TextFormField(
      style: TextStyle(
          color: Colors.white
      ),
      decoration: InputDecoration(
        prefixStyle: TextStyle(color:Colors.white),
        hintText: customHintText ,
        hintStyle: TextStyle(
          color: Colors.grey.shade400,
        ),
        suffixIcon: icon != null ? Container(
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green.shade400
          ),
          child: icon,
        ):null,
        prefix: Icon(Icons.lock,color: Colors.white,),
        fillColor: Colors.white70,
        border: _inputBorder,
        focusedBorder: _inputBorder,
        disabledBorder: _inputBorder,
        enabledBorder: _inputBorder,
        filled: true,
      ),
    ),
  );
}

