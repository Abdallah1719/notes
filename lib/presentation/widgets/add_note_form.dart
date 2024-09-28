import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubits/cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/presentation/widgets/custom_botton.dart';
import 'package:notes/presentation/widgets/custom_text_form_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextFormFiled(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
            maxline: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormFiled(
            onSaved: (value) {
              content = value;
            },
            hint: 'content',
            maxline: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomBotton(onTap: () {
            if (formkey.currentState!.validate()) {
              formkey.currentState!.save();
              var currentDate = DateTime.now();
              var formatcurrentDate =
                  DateFormat('dd/mm/yy').format(currentDate);
              var notemodel = NoteModel(
                title: title!,
                subtitle: content!,
                date: formatcurrentDate,
              );
              BlocProvider.of<NotesCubit>(context).addNote(notemodel);
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          }),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
