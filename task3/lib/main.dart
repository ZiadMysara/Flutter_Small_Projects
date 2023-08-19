import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Task_3(),
    );
  }
}

class Task_3 extends StatelessWidget {
  const Task_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(32, 151, 243, 1),
        toolbarHeight: 3,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Menu",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w900,
                fontFamily: AutofillHints.middleName,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  "HOT DRINKS  ",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    fontFamily: AutofillHints.middleName,
                    color: Colors.red,
                  ),
                ),
                Text(
                  "Partition",
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: AutofillHints.middleName,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 130,
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset(
                              "assets/img/Cappuccino.png",
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          const Padding(
                            padding:
                                EdgeInsets.only(right: 20, top: 20, bottom: 20),
                            child: Column(
                              children: [
                                Text(
                                  "CUPPUCCINO",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Row(
                                  children: [
                                    Text(
                                      "40 L.E",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                      textAlign: TextAlign.right,
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Icon(
                                      FontAwesomeIcons
                                          .solidHeart, // Choose the heart icon you prefer
                                      color: Colors.red,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 130,
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset(
                              'assets/img/Caffe.png', // Replace with your image URL
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain, // Adjust the fit as needed
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          const Padding(
                            padding:
                                EdgeInsets.only(right: 20, top: 20, bottom: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "COFFEE",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Row(
                                  children: [
                                    Text(
                                      "30 L.E",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Icon(
                                      FontAwesomeIcons
                                          .solidHeart, // Choose the heart icon you prefer
                                      color: Colors.red,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  width: double.infinity,
                  height: 130,
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset(
                              'assets/img/Mocha.png', // Replace with your image URL
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain, // Adjust the fit as needed
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          const Padding(
                            padding:
                                EdgeInsets.only(right: 20, top: 20, bottom: 20),
                            child: Column(
                              children: [
                                Center(
                                  child: Text(
                                    "MOCHA",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Row(
                                  children: [
                                    Text(
                                      "40 L.E",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Icon(
                                      FontAwesomeIcons
                                          .solidHeart, // Choose the heart icon you prefer
                                      color: Colors.red,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
