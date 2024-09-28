import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/notes_cubit.dart';
import 'package:notes/presentation/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
          right: 20,
          left: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: BlocListener<NotesCubit, NotesState>(
        listener: (context, state) {
          if (state is AddNoteSucsess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        child: const AddNoteForm(),
      ),
    );
  }
}
