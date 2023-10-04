import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
         enabledBorder: buildBorder(),
        focusedBorder:buildBorder(kprimaryColor),
        hintText: 'Title',
        hintStyle:const TextStyle(fontSize: 20,color: kprimaryColor),
        
        
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) { 
   return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color:color?? Colors.white));
  }
}