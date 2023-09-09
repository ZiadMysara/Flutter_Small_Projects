import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task8/providers/x_o_provider.dart';
import 'package:task8/widgets/MyCustomColoum.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => X_O_Provider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const home(),
      ),
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final MyProvider = Provider.of<X_O_Provider>(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("X-O Game",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(MyProvider.MyFinalResult, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyCustomColoum(index: 0),
              MyCustomColoum(index: 1),
              MyCustomColoum(index: 2),
            ],
          ),
          const SizedBox(height: 70),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  MyProvider.reset();
                },
                icon: const Icon(Icons.restart_alt, color: Colors.black),
                label: const Text(
                  "restart",
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateColor.resolveWith((states) => Colors.amber),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
