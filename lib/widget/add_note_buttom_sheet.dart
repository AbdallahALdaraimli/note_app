import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widget/custom_button.dart';
import 'package:note_app/widget/custom_text_filed.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 32,
          ),
          CustemTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 16,
          ),
          CustemTextField(
            hint: 'containt',
            maxLines: 5,
          ),
          SizedBox(
            height: 16,
          ),
          CustomButton(),
          SizedBox(
            height: 16,
          ),
        ]),
      ),
    );
  }
} 

