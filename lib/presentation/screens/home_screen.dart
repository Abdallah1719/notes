import 'package:flutter/material.dart';
import 'package:notes/constants.dart';
import 'package:notes/presentation/widgets/add_note_bottom_sheet.dart';
import 'package:notes/presentation/widgets/home_screen_body.dart';
import 'package:notes/presentation/widgets/search_fn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void startSearching() {
    isSearching = true;
    setState(() {});
  }

  void stopSearching() {
    isSearching = false;
    setState(() {});
  }

  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearching ? null : const Text('notes'),
        actions: [
          !isSearching
              ? IconButton(
                  onPressed: () {
                    startSearching();
                  },
                  icon: const Icon(Icons.search),
                )
              : SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: const Search()),
          if (isSearching)
            IconButton(
              onPressed: () {
                stopSearching();
              },
              icon: const Icon(Icons.close),
            )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (contex) {
                return const AddNoteBottomSheet();
              });
        },
        backgroundColor: darkBlue,
        child: const Icon(
          Icons.add,
          color: beige,
        ),
      ),
      body: HomeScreenBody(
        isSearching: isSearching,
      ),
    );
  }
}
