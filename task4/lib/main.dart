import 'package:flutter/material.dart';
import 'package:task4/widgets/custom_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Contacts(),
    );
  }
}

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          title: const Text("Contacts",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.add),
            )
          ],
        ),
        body: ListView(
          children: [
            Custom_row(name: "Mohmed Samy", num: "01016673951"),
            Custom_row(name: "mohamed Elsebaey", num: "01559508335"),
            Custom_row(name: "Ahmed", num: "01023423526"),
            Custom_row(name: "omar", num: "01013563951"),
            Custom_row(name: "ali", num: "01346346967"),
          ],
        ));
  }
}
