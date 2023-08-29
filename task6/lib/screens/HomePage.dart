import 'package:flutter/material.dart';
import 'package:task6/widgets/qution.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<String> answers = ["hello its me", "yo yo yo ", "UI Focused", "All of the above"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
        ),
        body: Form(
          key: formKey,
          child: ListView(
            children: [
              qution(myText: "myText", answers: answers)
            ],
          ),
        ));
  }
}
