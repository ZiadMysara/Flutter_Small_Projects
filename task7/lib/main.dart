import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:task7/providers/notes.dart';
import 'package:task7/screens/First_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Notes()),
      ],
      child: MaterialApp(
        
        routes: {
          FirstScreen.ID :(context) =>  FirstScreen(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(
          useMaterial3: true,
        ),
        home:  FirstScreen(),
      ),
    );
  }
}
