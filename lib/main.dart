import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/constants.dart';
import 'package:notes/cubits/cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/presentation/screens/home_screen.dart';
import 'package:notes/simple_bloc_opserver.dart';

void main() async {
  Bloc.observer = SimpleBlocOpserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(notesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
