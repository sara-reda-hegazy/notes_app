import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 30),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hintText:'Title',),
            SizedBox(height: 16,),
            CustomTextField(hintText:'Content',maxLines: 5,),
            SizedBox(height: 30,),
            CustomButton(),
          ],
          
        ),
      ),
    );
  }
}
