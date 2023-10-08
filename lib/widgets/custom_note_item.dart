import 'package:flutter/material.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) {
          return const EditNoteView();
        },));
      },
      child: Container(
        padding:const EdgeInsets.only(top: 24,left: 16,bottom:24),
        decoration: BoxDecoration(
          color:  Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(note.title,style:const TextStyle(color: Colors.black,fontSize: 25),),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(note.subTitle,style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize:18),),
              ),
              trailing: IconButton(onPressed: (){
                note.delete();
              },
               icon:const Icon(Icons.delete,size: 30,color: Colors.black,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18 ),),
            ),
          ],
        ),
      ),
    );
  }
}