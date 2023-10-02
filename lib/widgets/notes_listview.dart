
import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
   
  @override
  Widget build(BuildContext context) {
    return    ListView.builder(
      itemBuilder: (context, index) =>const Padding(
        padding:   EdgeInsets.only(top: 8),
        child:   NoteItem(),
      ),
      itemCount: 10,
    );
  }
}