import 'dart:math';

import 'package:flutter/material.dart';

class X_O_Provider extends ChangeNotifier {
  String MyFinalResult = "";
  List<String> X_O = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  List<bool> park = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  void toggle(int index) {
    park[index] = true;
    notifyListeners();
  }

  void setElement(
      {required int index, required String c, required BuildContext context}) {
    if (park[index] == false) {
      X_O[index] = c;
      toggle(index);
      String winner = WinConditions();
      if (winner == 'Still no winner') {
        bool MyboolTemp = true;
        for (var element in park) {
          if (element == false) {
            MyboolTemp = false;
          }
        }
        if (MyboolTemp == true) {
          String winner = 'It\'s a tie!';
          showWinner(winner, context);
        } else {
          if (c == "X") {
            computerPlay(context: context);
          }
        }
      } else {
        showWinner(winner, context);
      }
    }
  }

  void reset() {
    for (var i = 0; i < 9; i++) {
      park[i] = false;
      X_O[i] = "";
    }
    MyFinalResult = "";
    notifyListeners();
  }

  void computerPlay({required BuildContext context}) {
    List<int> canBeAccessed = [];
    canBeAccessed.clear();
    for (var i = 0; i < 9; i++) {
      if (park[i] == false) {
        canBeAccessed.add(i);
      }
    }
    if (canBeAccessed.isNotEmpty) {
      Random random = Random();
      int randomIndex = random.nextInt(canBeAccessed.length);
      setElement(index: canBeAccessed[randomIndex], c: "O", context: context);
    }
  }

  String WinConditions() {
    // Check rows, columns, and diagonals for a winner
    for (int i = 0; i < 3; i++) {
      // Check rows
      if (X_O[i * 3] == X_O[i * 3 + 1] && X_O[i * 3 + 1] == X_O[i * 3 + 2]) {
        if (X_O[i * 3] == 'X') {
          return 'Player X wins!';
        } else if (X_O[i * 3] == 'O') {
          return 'Player O wins!';
        }
      }

      // Check columns
      if (X_O[i] == X_O[i + 3] && X_O[i + 3] == X_O[i + 6]) {
        if (X_O[i] == 'X') {
          return 'Player X wins!';
        } else if (X_O[i] == 'O') {
          return 'Player O wins!';
        }
      }
    }

    // Check diagonals
    if (X_O[0] == X_O[4] && X_O[4] == X_O[8] ||
        X_O[2] == X_O[4] && X_O[4] == X_O[6]) {
      if (X_O[4] == 'X') {
        return 'Player X wins!';
      } else if (X_O[4] == 'O') {
        return 'Player O wins!';
      }
    }

    // If no winner found, it's a tie.
    return 'Still no winner';
  }

  void setMyFinalResult(String x) {
    MyFinalResult = x;
    notifyListeners();
  }

  void showWinner(String winner, BuildContext context) {
    for (var i = 0; i < 9; i++) {
      park[i] = true;
    }
    setMyFinalResult(winner);
    notifyListeners();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                      child: Text(
                    winner,
                    style: const TextStyle(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
            ));
  }
}
