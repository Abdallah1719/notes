import 'package:flutter/material.dart';
import 'package:notes/presentation/widgets/notes_list_view.dart';


class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
    required this.isSearching,
  });
  final bool isSearching;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        /* CustomAppBar(
          text: 'Notes',
          icon: const Icon(
            Icons.search,
            color: beige,
          ),
          onPressed: () {},
        ),*/
        Expanded(
          child: NotesListView(
            isSearcing: isSearching,
          ),
        ),
      ],
    );
  }
}
