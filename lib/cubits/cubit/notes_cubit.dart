import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constants.dart';
import 'package:notes/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLodding());

    var notesbox = Hive.box<NoteModel>(notesBox);

    await notesbox.add(note);
    emit(AddNoteSucsess());
  }

  List<NoteModel>? notes;
  fetchAllNotes() {
    log('/*/*/*/*/*/*/*');
    var notesbox = Hive.box<NoteModel>(notesBox);
    notes = notesbox.values.toList();
    emit(NoteSucsess());
  }

  late List<NoteModel> searchedForNote;
  final searchTextController = TextEditingController();

  void addSearchedForItemstoSearchedList(String searchednotes) {
    searchedForNote = notes!.where((search) {
      return search.title.startsWith(searchednotes.toLowerCase()) ||
          search.subtitle.startsWith(searchednotes.toLowerCase());
    }).toList();
    emit(NoteOnChangeSearch());
    log('${searchedForNote.length}');
  }
}
