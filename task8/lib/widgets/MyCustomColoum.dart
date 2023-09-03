import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/x_o_provider.dart';

class MyCustomColoum extends StatelessWidget {
  int index;
  MyCustomColoum({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final MyProvider = Provider.of<X_O_Provider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
            onTap: () {
              MyProvider.setElement(index: ((index * 3) + 0), c: "X", context: context);
            },
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), color: Colors.amber),
              child: Center(
                  child: Text(MyProvider.X_O[index * 3 + 0],
                      style: const TextStyle(
                          fontSize: 50,
                          color: Colors.red,
                          fontWeight: FontWeight.bold))),
            )),
        InkWell(
            onTap: () {
              MyProvider.setElement(index: ((index * 3) + 1), c: "X", context: context);
            },
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), color: Colors.amber),
              child: Center(
                  child: Text(
                MyProvider.X_O[index * 3 + 1],
                style: const TextStyle(
                    fontSize: 50,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              )),
            )),
        InkWell(
            onTap: () {
              MyProvider.setElement(index: ((index * 3) + 2), c: "X", context: context);
            },
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black), color: Colors.amber),
              child: Center(
                  child: Text(MyProvider.X_O[index * 3 + 2],
                      style: const TextStyle(
                          fontSize: 50,
                          color: Colors.red,
                          fontWeight: FontWeight.bold))),
            )),
      ],
    );
  }
}
