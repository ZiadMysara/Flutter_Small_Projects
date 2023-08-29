import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class qution extends StatefulWidget {
  static int num = 0;
  String myText;
  List<String> answers;
  qution({super.key, required this.myText, required this.answers}) {
    num++;
  }
  int myNum = num;
  @override
  State<qution> createState() => _qutionState();
}

class _qutionState extends State<qution> {
  int groupValue = 0;
  void onChanged(int? value) {
    setState(() {
      groupValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Q${widget.myNum}. ${widget.myText}",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CupertinoRadio(
                      value: 0, groupValue: groupValue, onChanged: onChanged),
                  const SizedBox(width: 10),
                  Text("${widget.answers[0]}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CupertinoRadio(
                      value: 1, groupValue: groupValue, onChanged: onChanged),
                  const SizedBox(width: 10),
                  Text("${widget.answers[1]}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CupertinoRadio(
                      value: 2, groupValue: groupValue, onChanged: onChanged),
                  const SizedBox(width: 10),
                  Text("${widget.answers[2]}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CupertinoRadio(
                      value: 3, groupValue: groupValue, onChanged: onChanged),
                  const SizedBox(width: 10),
                  Text("${widget.answers[3]}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
