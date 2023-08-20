import 'package:flutter/material.dart';

class Custom_row extends StatelessWidget {
  static int id = 0;
  int myid = id;
  String name;
  String num;

  Custom_row({
    super.key,
    required this.name,
    required this.num,
  }) {
    id++;
    myid = id;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color.fromRGBO(25, 118, 211, 1),
                    child: Text("$myid",
                        style: const TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        num,
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black54,
              height: 10,
              indent: 70,
              endIndent: 100,
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(child: SizedBox()),
                Icon(Icons.phone),
                Expanded(child: SizedBox()),
                Icon(Icons.edit, color: Colors.green),
                Expanded(child: SizedBox()),
                Icon(Icons.delete, color: Colors.red),
                Expanded(child: SizedBox()),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Colors.black54,
              height: 0,
            )
          ],
        ),
      ),
    );
  }
}
