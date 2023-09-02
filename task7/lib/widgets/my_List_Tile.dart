import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task7/providers/notes.dart';

class myListTile extends StatelessWidget {
  int index;
  myListTile({super.key, required this.index});
  String? title;
  String? contant;
  @override
  Widget build(BuildContext context) {
    final noteProvider = Provider.of<Notes>(context);
    return Dismissible(
      key: ValueKey(noteProvider.notes[index]),
      onDismissed: (direction) {
        noteProvider.deleteFromNotes(index);
      },
      child: ListTile(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Edit note", style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  TextField(
                    controller: TextEditingController(
                        text: noteProvider.notes.elementAt(index).title),
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
                      controller: TextEditingController(
                          text: noteProvider.notes.elementAt(index).contant),
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
                            noteProvider.editInNote(index,
                                title: title, contant: contant);
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
        title: Text(noteProvider.notes.elementAt(index).title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        subtitle: Text(noteProvider.notes.elementAt(index).contant),
        trailing: Checkbox(
          value: noteProvider.notes.elementAt(index).value,
          onChanged: (value) {
            noteProvider.toggle(index);
          },
        ),
      ),
    );
  }
}
