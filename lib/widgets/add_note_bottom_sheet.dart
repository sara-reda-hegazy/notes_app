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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey=GlobalKey();
  String ? title,subTitle;
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return   Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child:  Column(
        children: [
          CustomTextField(
            hintText:'Title',
          onSaved: (value) {
            title=value;
          },),
         const SizedBox(height: 16,),
          CustomTextField(
            hintText:'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle=value;
            },),
          const SizedBox(height: 30,),
          CustomButton(
            onTap: () {
              if(formKey.currentState!.validate())
              {
                formKey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
        ],
        
      ),
    );
  }
}
