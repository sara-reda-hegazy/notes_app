import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
      child: Column(
        children: [
          CustomTextField()
        ],
        
      ),
    );
  }
}

