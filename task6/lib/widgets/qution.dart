import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task6/widgets/CustomRadio.dart';

class qution extends StatefulWidget {
  static int num = 0;
  String Questions;
  List answers;
  qution({super.key, required this.Questions, required this.answers}) {
    num++;
  }
  int myNum = num;
  @override
  State<qution> createState() => _qutionState();
}

class _qutionState extends State<qution> {
  int groupValue = 0;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(15),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.5),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Q${widget.myNum}. ${widget.Questions}",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 10),
            CustomRadio(answers: widget.answers[0], groupValue: groupValue, value: 1),
            CustomRadio(answers: widget.answers[1], groupValue: groupValue, value: 2),
            CustomRadio(answers: widget.answers[2], groupValue: groupValue, value: 3),
            CustomRadio(answers: widget.answers[3], groupValue: groupValue, value: 4),
          ],
        ),
      ),
    );
  }
}
