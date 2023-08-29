import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> Gender = ["Male", "Female"];
  List<String> University = ["AUC", "FCI", "MUST"];
  List<String> Grade = ["Grade 1", "Grade 2", "Grade 3", "Grade 4"];
  bool _isDropdownOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              showCursor: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "E_mail"),
            ),
            const SizedBox(height: 10),
            TextFormField(
              showCursor: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Password"),
            ),
            const SizedBox(height: 10),
            TextFormField(
              showCursor: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Password"),
            ),
            const SizedBox(height: 10),
            TextFormField(
              showCursor: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: "Phone"),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Gender",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "University",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 110,
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Male",
                    ),
                    items: Gender.map((e) => DropdownMenuItem(
                          value: e,
                          child: Text("${e}"),
                        )).toList(),
                    onChanged: (value) {},
                  ),
                ),
                Container(
                  width: 110,
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "AUC",
                    ),
                    items: University.map((e) => DropdownMenuItem(
                          value: e,
                          child: Text("${e}"),
                        )).toList(),
                    onChanged: (value) {},
                    autofocus: _isDropdownOpen,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Grade",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              width: 200,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Grade 1",
                ),
                items: Grade.map((e) => DropdownMenuItem(
                      value: e,
                      child: Text("${e}"),
                    )).toList(),
                onChanged: (value) {},
                autofocus: _isDropdownOpen,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: const MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                        padding:
                            const MaterialStatePropertyAll(EdgeInsets.all(12)),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromRGBO(255, 217, 0, 1))),
                    child: const Text("Sign Up",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text("OR", style: TextStyle(fontSize: 18)),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: const MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                        padding:
                            const MaterialStatePropertyAll(EdgeInsets.all(12)),
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromRGBO(255, 217, 0, 1))),
                    child: const Text("Sign In",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
