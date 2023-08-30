import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class qution extends StatefulWidget {
  static int num = 0;
  String Questions;
  List answers;
  int groupValue = 0;
  qution({super.key, required this.Questions, required this.answers}) {
    num++;
  }
  int myNum = num;
  @override
  State<qution> createState() => _qutionState();
}

class _qutionState extends State<qution> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Q${widget.myNum}. ${widget.Questions}",
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CupertinoRadio(
                        
                        inactiveColor: Colors.grey[200],
                        value: 1,
                        groupValue: widget.groupValue,
                        onChanged: (value) {
                          setState(() {
                            widget.groupValue = value!;
                          });
                        },
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text("${widget.answers[0]}",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CupertinoRadio(
                        inactiveColor: Colors.grey[200],
                        value: 2,
                        groupValue: widget.groupValue,
                        onChanged: (value) {
                          setState(() {
                            widget.groupValue = value!;
                          });
                        },
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text("${widget.answers[1]}",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CupertinoRadio(
                        
                        inactiveColor: Colors.grey[200],
                        value: 3,
                        groupValue: widget.groupValue,
                        onChanged: (value) {
                          setState(() {
                            widget.groupValue = value!;
                          });
                        },
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text("${widget.answers[2]}",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CupertinoRadio(
                        inactiveColor: Colors.grey[200],
                        value: 4,
                        groupValue: widget.groupValue,
                        onChanged: (value) {
                          setState(() {
                            widget.groupValue = value!;
                          });
                        },
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text("${widget.answers[3]}",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
