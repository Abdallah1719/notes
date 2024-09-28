import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes/cubits/cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/presentation/widgets/note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({
    super.key,
    required this.isSearcing,
  });
  final bool isSearcing;
  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        //
        List<NoteModel> notes = widget.isSearcing
            ? BlocProvider.of<NotesCubit>(context).searchedForNote
            : BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
            itemCount: notes.length,
            padding: const EdgeInsets.only(top: 10),
            itemBuilder: (context, index) {
              return NoteItem(
                note: notes[index],
              );
            });
      },
    );
  }
}
