import 'dart:math';

import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  List<String> Gender = ["Male", "Female"];
  List<String> University = ["AUC", "FCI", "MUST"];
  List<String> Grade = ["Grade 1", "Grade 2", "Grade 3", "Grade 4"];
  bool _isDropdownOpen = false;
  String? emailController;
  String? passwordController;
  String? _conformPasswordController;
  String? _phoneController;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isPasswordVisible1 = false;
  bool _isPasswordVisible2 = false;
  List emailAndPassword = [
    {
      "ziad@gmail.com": "33136636",
    },
    {
      "yousef@gmail.com": "01148127358",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              SizedBox(
                height: 70,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  showCursor: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "E_mail"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    } else if (!value.contains("@")) {
                      return "Please enter a valid email";
                    } else {
                      emailController = value;
                    }
                  },
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 70,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: isPasswordVisible1,
                  showCursor: true,
                  decoration: InputDecoration(
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              isPasswordVisible1 = !isPasswordVisible1;
                            });
                          },
                          icon: isPasswordVisible1
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.visibility_off)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Password";
                    } else if (value.length >= 12) {
                      return "Please enter a valid Password";
                    } else {
                      passwordController = value;
                    }
                  },
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 70,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  showCursor: true,
                  obscureText: _isPasswordVisible2,
                  decoration: InputDecoration(
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible2 = !_isPasswordVisible2;
                            });
                          },
                          icon: _isPasswordVisible2
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.visibility_off)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Password";
                    } else if (value.length >= 8) {
                      return "Please enter a valid Password";
                    }
                    try {
                      if (value != passwordController!)
                        return "Please enter the same Password";
                    } catch (e) {
                      return "Please enter the same Password";
                    }
                  },
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 70,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  showCursor: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Phone"),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your Phone";
                    } else if (value.length != 11) {
                      return "Please enter a valid Phone";
                    }
                  },
                ),
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
                child: Center(
                  child: Text(
                    "Grade",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 80, right: 80),
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
                      onPressed: () {
                        bool temp;
                        temp = _formKey.currentState!.validate();
                        if (temp) {
                          emailAndPassword
                              .add({emailController!: passwordController!});
                          Navigator.pushNamed(context, "loginPage",
                              arguments: emailAndPassword);
                        }
                      },
                      style: ButtonStyle(
                          shape: const MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.all(12)),
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  const Color.fromRGBO(255, 217, 0, 1))),
                      child: const Text("Sign Up",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child:
                    Center(child: Text("OR", style: TextStyle(fontSize: 18))),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "loginPage",
                            arguments: emailAndPassword);
                      },
                      style: ButtonStyle(
                          shape: const MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.all(12)),
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) =>
                                  const Color.fromRGBO(255, 217, 0, 1))),
                      child: const Text("Sign In",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
