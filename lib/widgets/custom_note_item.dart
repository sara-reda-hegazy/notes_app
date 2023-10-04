import 'package:flutter/material.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

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
          color:const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:const Text('Flutter tips',style: TextStyle(color: Colors.black,fontSize: 25),),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text('Build your Career with Tharwat Samy',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize:18),),
              ),
              trailing: IconButton(onPressed: (){},
               icon:const Icon(Icons.delete,size: 30,color: Colors.black,)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('May 21,2022',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18 ),),
            ),
          ],
        ),
      ),
    );
  }
}