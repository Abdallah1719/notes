
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<NoteModel> notes = [];

  @override
  void initState() {
    notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<NotesCubit>(context);
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return TextField(
          controller: bloc.searchTextController,
          cursorColor: darkBlue,
          decoration: const InputDecoration(
            hintText: 'search notes',
            hintStyle: TextStyle(color: darkBlue, fontSize: 18),
            border: InputBorder.none,
          ),
          style: const TextStyle(color: darkBlue, fontSize: 18),
          onChanged: (searchednotes) {
            bloc.addSearchedForItemstoSearchedList(searchednotes);
          },
        );
      },
    );
  }
}
