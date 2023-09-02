import 'package:flutter/material.dart';
import 'package:task7/models/note.dart';

class Notes extends ChangeNotifier {
  List<Note> notes = [
    Note(title: "study .NET", contant: "vido 1 \nvido 2\nvido 3\nvido 4"),
    Note(title: "study Flutter", contant: "we need to search abot vidos"),
    Note(title: "study benaa mannhagy", contant: "we have alot of subject")
  ];

  void addToNotes(Note value) {
    notes.add(value);
    notifyListeners();
  }

  void deleteFromNotes(int index) {
    notes.removeAt(index);
    notifyListeners();
  }

  void editInNote(int index, {String? title = null, String? contant = null}) {
    notes.elementAt(index).title = title ?? notes.elementAt(index).title;
    notes.elementAt(index).contant = contant ?? notes.elementAt(index).contant;
    notifyListeners();
  }

  List<Note> searchInNotes(String value) {
    return notes
        .where((element) =>
            element.title.toLowerCase().contains(value.toLowerCase()) ||
            element.contant.toLowerCase().contains(value.toLowerCase()))
        .toList();
  }

  void toggle(int index) {
    notes.elementAt(index).value = !notes.elementAt(index).value;
    notifyListeners();
  }
}
