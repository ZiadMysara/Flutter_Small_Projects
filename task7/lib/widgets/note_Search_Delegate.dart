import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task7/providers/notes.dart';
import 'package:task7/widgets/my_List_Tile.dart';

import '../models/note.dart';

class NoteSearchDelegate extends SearchDelegate {
  Widget buildSearchBar(BuildContext context) {
    return TextField(
      onChanged: (query) {},
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear_all_rounded))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.close));
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSuggestions(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Note> temp = Provider.of<Notes>(context).searchInNotes(query);
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        title: Text(temp[index].title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        subtitle: Text(temp[index].contant),
        trailing:
            Checkbox(value: temp[index].value, onChanged: (value) => true),
      ),
      itemCount: temp.length,
    );
  }
}
