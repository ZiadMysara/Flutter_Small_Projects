import 'package:flutter/material.dart';
import 'package:task5/widgets/CustomRow.dart';

void main() {
  ThemeData(useMaterial3: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WhatsApp(),
    );
  }
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(7, 94, 85, 1),
        title: const Text("WhatsApp", style: TextStyle(color: Colors.white)),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.more_vert),
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            color: const Color.fromRGBO(7, 94, 85, 1),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 15),
                  child: Icon(Icons.camera_alt,
                      color: Color.fromRGBO(133, 167, 168, 1)),
                ),
                Container(
                  width: 100,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                        width: 3.0,
                      ),
                    ),
                  ),
                  child: const Align(
                    alignment: Alignment(0.0, 0.0),
                    child: Text(
                      "CHATS",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  width: 100,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                        width: 0.0,
                      ),
                    ),
                  ),
                  child: const Align(
                    alignment: Alignment(0.0, 0.0),
                    child: Text(
                      "STATUS",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  width: 100,
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                        width: 0.0,
                      ),
                    ),
                  ),
                  child: const Align(
                    alignment: Alignment(0.0, 0.0),
                    child: Text(
                      "CALLS",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
          Column(
            children: [
              CustomRow(
                  RName: "Ahmed Salah", RText: "Hello", RDate: "07:47 PM"),
              CustomRow(
                  RName: "User", RText: "Hello", RDate: "07:47 PM"),
              CustomRow(
                  RName: "User2", RText: "Hello User2", RDate: "07:47 PM"),
              CustomRow(
                  RName: "User3", RText: "Hello", RDate: "07:47 PM"),
              CustomRow(
                  RName: "User4", RText: "Hello User4", RDate: "07:47 PM"),
              CustomRow(
                  RName: "User5", RText: "Hello", RDate: "07:47 PM"),
              CustomRow(
                  RName: "User6", RText: "Hello User6", RDate: "07:47 PM"),
              CustomRow(
                  RName: "User7", RText: "Hello", RDate: "07:47 PM"),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Tap and hold on chat for more options",
                    style: TextStyle(color: Color.fromRGBO(112, 112, 112, 1), fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'chat',
        backgroundColor: const Color.fromRGBO(32, 198, 90, 1),
        child: const Icon(Icons.chat),
      ),
    );
  }
}
