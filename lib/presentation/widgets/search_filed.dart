// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:notes/constants.dart';
// import 'package:notes/cubits/cubit/notes_cubit.dart';
// import 'package:notes/models/note_model.dart';
// import 'package:notes/presentation/widgets/note_item.dart';

// class SearchFiled extends StatefulWidget {
//   const SearchFiled({super.key});

//   @override
//   State<SearchFiled> createState() => _SearchFiledState();
// }

// class _SearchFiledState extends State<SearchFiled> {
//   final searchTextController = TextEditingController();

//   List<NoteItem>? searchedForNotes;
//   bool isSearching = false;
 
  

//   @override
//   Widget build(BuildContext context) {
//     BlocProvider.of<NotesCubit>(context).fetchAllNotes();
//         List<NoteModel> notes =
//             BlocProvider.of<NotesCubit>(context).notes ?? [];
//              void addSearchedForItemstoSearchedList(){
//   searchedForNotes = notes.where(notes)notes.n

//  }
//     return TextField(
      
//       onChanged: (searchednotes) {
//         addSearchedForItemstoSearchedList( searchednotes: searchednotes,,);
//       },
//     );
//   }
// }

 