import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/presentation/widgets/edit_screen_body.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditScreenBody(note:note),
    );
  }
}
