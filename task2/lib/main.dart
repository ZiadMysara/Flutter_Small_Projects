import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Task_2(),
    );
  }
}

class Task_2 extends StatelessWidget {
  const Task_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Task 2'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(81, 200, 120, 1),
      ),
      backgroundColor: const Color.fromRGBO(39, 50, 56, 1),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
                height: 410,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      "Child 1",
                      style: TextStyle(
                        fontFamily: AutofillHints.countryName,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: SizedBox(
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(139, 194, 74, 1),
                        ),
                        child: const Center(
                          child: Text(
                            "Child 2",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: AutofillHints.countryName,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(33, 150, 243, 1),
                        ),
                        child: const Center(
                          child: Text(
                            "Child 3",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: AutofillHints.countryName,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
      //anoher colum
    );
  }
}
