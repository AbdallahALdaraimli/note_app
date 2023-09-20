import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_icon.dart';
import 'package:note_app/widget/notes_view_body.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:const TextStyle(fontSize: 28),
        ),
        
        CustomIcon(
          icon: icon,
        ),
      ],
    );
  }
}

