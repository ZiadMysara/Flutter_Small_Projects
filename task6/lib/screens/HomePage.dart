import 'package:flutter/material.dart';
import 'package:task6/widgets/qution.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static int Grade = 0;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> Questions = [
    "Q1. What is the main programming language used in Flutter development?",
    "Q2. Which widget in Flutter is used to create a scrollable list of children with a single child visible at a time?",
    "Q3. In Flutter, what's the purpose of a 'BuildContext'?",
    "Q4. What's the primary function of the 'setState' method in a Flutter Stateful widget?",
    "Q5. Which widget is commonly used for displaying tabbed navigation in Flutter?",
    "Q6. What's the purpose of a 'Key' in Flutter?"
  ];
  List<List<String>> answers = [
    ["Java", "Python", "Dart", "Swift"],
    ["ListView", "GridView", "Column", "SingleChildScrollView"],
    [
      "To manage app state",
      "To define the layout of widgets",
      "To provide access to localization data",
      "To identify the location of a widget in the widget tree"
    ],
    [
      "To rebuild the widget tree and reflect changes",
      "To create a new instance of the widget",
      "To manage the app's navigation stack",
      "To define the widget's initial state"
    ],
    ["TabView", "TabLayout", "TabBarView", "TabBar"],
    [
      "To provide a unique identifier for a widget",
      "To define the visual properties of a widget",
      "To determine the widget's layout constraints",
      "To handle user interactions with a widget"
    ]
  ];
  List correctAnswers = [3, 4, 4, 1, 4, 1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'assets/img/QuizTime.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            qution(
                Questions: Questions[0],
                answers: answers[0],
                correctAnswers: correctAnswers[0]),
            qution(
                Questions: Questions[1],
                answers: answers[1],
                correctAnswers: correctAnswers[1]),
            qution(
                Questions: Questions[2],
                answers: answers[2],
                correctAnswers: correctAnswers[2]),
            qution(
                Questions: Questions[3],
                answers: answers[3],
                correctAnswers: correctAnswers[3]),
            qution(
                Questions: Questions[4],
                answers: answers[4],
                correctAnswers: correctAnswers[4]),
            qution(
                Questions: Questions[5],
                answers: answers[5],
                correctAnswers: correctAnswers[5]),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 60.0, right: 60.0, top: 20.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      ScaffoldMessenger.of(context).clearSnackBars();
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content:
                              Text('Your Grade is ${HomePage.Grade} / 6')));
                      qution.reset = 0;
                      HomePage.Grade = 0;
                    });
                  },
                  style: ButtonStyle(
                      shape: const MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)))),
                      padding:
                          const MaterialStatePropertyAll(EdgeInsets.all(16)),
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black)),
                  child: const Text("Submit",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 60.0, right: 60.0, top: 20.0, bottom: 60.0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                      shape: const MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)))),
                      padding:
                          const MaterialStatePropertyAll(EdgeInsets.all(16)),
                      backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black)),
                  child: const Text("log out",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
