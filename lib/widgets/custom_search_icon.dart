import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Container(
             decoration: BoxDecoration(
              color: Colors.black.withOpacity(.1),
              borderRadius: BorderRadius.circular(16),
             ),
             child: IconButton(onPressed: (){}, icon:const Icon(Icons.search,size: 25,)),
          ),
        );
  }
}
