part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class AddNoteLodding extends NotesState {}

class AddNoteSucsess extends NotesState {}
class NoteSucsess extends NotesState {}


class NoteOnChangeSearch extends NotesState {}
class NoteStartSearch extends NotesState {}
class NoteStopSearch extends NotesState {}
class NoteClearSearch extends NotesState {}