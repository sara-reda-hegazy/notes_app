import 'package:flutter/material.dart';
import 'package:notesapp/widgets/add_note_bottom_sheet.dart';
import 'package:notesapp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:const NotesViewBody(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder:(context) {
          return const AddNoteBottomSheet();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        )
        );
      },
      child:const Icon(Icons.add),),
    );
  }
}
