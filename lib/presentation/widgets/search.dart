// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:notes/constants.dart';
// import 'package:notes/cubits/cubit/notes_cubit.dart';
// import 'package:notes/models/note_model.dart';
// import 'package:notes/presentation/widgets/note_item.dart';

// class Search extends StatefulWidget {
//   const Search({super.key});

//   @override
//   State<Search> createState() => _SearchState();
// }

// class _SearchState extends State<Search> {
  

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NotesCubit, NotesState>(
//       builder: (context, state) {
//         BlocProvider.of<NotesCubit>(context).fetchAllNotes();
//         List<NoteModel> notes =
//             BlocProvider.of<NotesCubit>(context).notes ?? [];
//         return ListView.builder(
//             itemCount: notes.length,
//             padding: const EdgeInsets.only(top: 10),
//             itemBuilder: (context, index) {
//               return NoteItem(
//                 note: notes[index],
//               );
//             });
//       },
//     );
//   }
// }


// class SearchField extends StatelessWidget {
//    SearchField({super.key});
//   final searchTextController = TextEditingController();
//   bool isSearching = false;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: searchTextController,
//       cursorColor: darkBlue,
//       decoration: InputDecoration(
//         hintText: 'search notes',
//         hintStyle: TextStyle(color: darkBlue, fontSize: 18),
//         border: InputBorder.none,
//       ),
//       style: TextStyle(color: darkBlue, fontSize: 18),
//        onChanged: (searchednotes) {
//         addSearchedForItemstoSearchedList( searchednotes);
//       },


//     );
//   }
// }


// void addSearchedForItemstoSearchedList(String searchednotes){
//   notes

// }