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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidatemode=AutovalidateMode.disabled;
  String ? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key:formKey,
      autovalidateMode: autovalidatemode,
      child: Column(
       children:[
     const SizedBox (
        height: 32,
      ),
      CustemTextField(
        onSaved: (value) {
          title = value;
        },
        hint: 'title',
      ),
     const SizedBox(
        height: 16,
      ),
      CustemTextField(
         onSaved: (value) {
          subTitle = value;
        },
        hint: 'containt',
        maxLines: 5,
      ),
   const   SizedBox(
        height: 16,
      ),
      CustomButton(
        onTap: () {
          if(formKey.currentState !.validate()){
            formKey.currentState !.save();
          }else{
            autovalidatemode=AutovalidateMode.always;
            setState(() {
              
            });
          }
        },
      ),
     const SizedBox(
        height: 16,
      ),
    ]));
  }
} 

