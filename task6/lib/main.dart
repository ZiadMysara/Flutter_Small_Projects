import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task6/screens/ForgotPasswordPage.dart';
import 'package:task6/screens/HomePage.dart';
import 'package:task6/screens/RegistrationPage.dart';
import 'package:task6/screens/loginPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "RegistrationPage": (context) => const RegistrationPage(),
        "loginPage": (context) => loginPage(),
        "HomePage": (context) => HomePage(),
        "ForgotPasswordPage": (context) => const ForgotPasswordPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RegistrationPage(),
    );
  }
}
