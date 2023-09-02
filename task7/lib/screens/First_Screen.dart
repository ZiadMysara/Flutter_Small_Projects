import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task7/models/note.dart';
import 'package:task7/providers/notes.dart';
import 'package:task7/widgets/my_List_Tile.dart';

import '../widgets/note_Search_Delegate.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  static String ID = "FirstScreen";
  String title = "";
  String contant = "";
  @override
  Widget build(BuildContext context) {
    final noteProvider = Provider.of<Notes>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("ToDo List"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: NoteSearchDelegate());
                },
                icon: Icon(Icons.search))
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => myListTile(index: index),
          itemCount: noteProvider.notes.length,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text("Add note", style: TextStyle(fontSize: 18)),
                    const SizedBox(height: 10),
                    TextField(
                      onChanged: (value) {
                        title = value;
                      },
                      decoration: const InputDecoration(
                        label: Text("Title"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                        onChanged: (value) {
                          contant = value;
                        },
                        decoration: const InputDecoration(
                          label: Text("contant"),
                          border: OutlineInputBorder(),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton.icon(
                            onPressed: () {
                              noteProvider.addToNotes(
                                  Note(title: title, contant: contant));
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.save),
                            label: const Text("Save")),
                        ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close),
                            label: const Text("close"))
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          child: const Icon(Icons.add),
        ));
  }
}
