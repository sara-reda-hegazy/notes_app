import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24,vertical: 16),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit Note',icon: Icons.check,),
         // CustomTextField(hintText: hintText)
        ],
      ),
    );
  }
}