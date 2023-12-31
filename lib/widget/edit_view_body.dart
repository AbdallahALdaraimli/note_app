import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_app_bar.dart';
import 'package:note_app/widget/custom_text_filed.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustemTextField(
            hint: ' Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustemTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
