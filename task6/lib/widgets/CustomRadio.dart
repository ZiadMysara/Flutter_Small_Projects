import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  var answers;
  var groupValue;
  var value;

  CustomRadio(
      {super.key,
      required this.answers,
      required this.groupValue,
      required this.value});

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  void onChanged(int? value) {
    setState(() {
      widget.groupValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CupertinoRadio(
            inactiveColor: Colors.grey[200],
            value: widget.value,
            groupValue: widget.groupValue,
            onChanged: (value) {
              onChanged(value);
            },
          ),
          const SizedBox(width: 10),
          Text("${widget.answers}",
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ],
      ),
    );
  }
}
