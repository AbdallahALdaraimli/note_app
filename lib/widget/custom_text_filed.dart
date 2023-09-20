import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustemTextField extends StatelessWidget {
  const CustemTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimarycolor,
      decoration: InputDecoration(
        hintText: 'title',
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimarycolor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
