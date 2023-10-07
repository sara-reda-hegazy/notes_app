
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

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
                 var noteModel = NoteModel(title: title!, subTitle: subTitle!, date:DateTime.now().toString(), color:Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
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
