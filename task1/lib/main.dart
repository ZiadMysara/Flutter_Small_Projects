import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Task1(),
    );
  }
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //icon
          leading: const Icon(Icons.menu),
          //background color
          backgroundColor: const Color.fromRGBO(81, 200, 120, 1),
          title: const Text('Task 1'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 130,
                      child: Container(color: Colors.red)),
                  const SizedBox(width: 40),
                  SizedBox(
                      width: 100,
                      height: 130,
                      child: Container(color: Colors.yellow)),
                ],
              ),
              const Expanded(child: SizedBox()),
              Row(
                children: [
                  SizedBox(
                      width: 100,
                      height: 130,
                      child: Container(color: Colors.red)),
                  const SizedBox(width: 40),
                  SizedBox(
                      width: 100,
                      height: 130,
                      child: Container(color: Color.fromRGBO(255, 110, 65, 1))),
                ],
              )
            ],
          ),
        ));
  }
}
