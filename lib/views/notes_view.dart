import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/widget/notes_view_body.dart';

class notesview extends StatelessWidget {
  const notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child:const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}
