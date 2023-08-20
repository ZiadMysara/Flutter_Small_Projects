import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  String RName;
  String RText;
  String RDate;
  bool recive ;
  CustomRow(
      {super.key,
      required this.RName,
      required this.RText,
      required this.RDate,
      this.recive = false,
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(left: 10, right: 10),
          leading: const CircleAvatar(
            backgroundColor: Color.fromRGBO(226, 231, 234, 1),
            child: Icon(
              Icons.person,
              size: 40,
              color: Colors.white,
            ),
          ),
          title: Text(
            RName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [

              const Icon(Icons.done_all, // Double checkmark icon
                  color:
                      Colors.blue, // Set the color to blue or any desired color
                  size: 15 // Set the size of the icon
                  ),
                  SizedBox(width: 5),
              
              Text(RText, style: const TextStyle(color: Colors.black54)),
            ],
          ),
          trailing: Text(
            RDate,
            style: const TextStyle(color: Colors.black54),
          ),
        ),
        const Divider(
          thickness: 1,
          indent: 70,
          endIndent: 15,
          height: 0,
        )
      ],
    );
  }
}
