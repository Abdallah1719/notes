import 'package:flutter/material.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/presentation/widgets/custom_app_bar.dart';
import 'package:notes/presentation/widgets/custom_text_form_filed.dart';

class EditScreenBody extends StatefulWidget {
  const EditScreenBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditScreenBody> createState() => _EditScreenBodyState();
}

class _EditScreenBodyState extends State<EditScreenBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        CustomAppBar(
          text: 'Edit Note',
          icon: const Icon(
            Icons.check,
            color: beige,
          ),
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.subtitle = content ?? widget.note.subtitle;
            widget.note.save();
            Navigator.pop(context);
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomTextFormFiled(
                  hint: widget.note.title,
                  maxline: 2,
                  onChanged: (value) {
                    title = value;
                  }),
              const SizedBox(
                height: 20,
              ),
              CustomTextFormFiled(
                  hint: widget.note.subtitle,
                  maxline: 5,
                  onChanged: (value) {
                    content = value;
                  }),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
