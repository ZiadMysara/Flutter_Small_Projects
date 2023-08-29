import 'package:flutter/material.dart';

class Login_button extends StatefulWidget {
  var emailAndPassword;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Login_button(
      {super.key, required this.emailAndPassword, required this.formKey});

  @override
  State<Login_button> createState() => _Login_buttonState();
}

class _Login_buttonState extends State<Login_button> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              bool temp;
              temp = widget.formKey.currentState!.validate();
              if (temp && true) {
                Navigator.pushNamed(context, "HomePage");
              }
            },
            style: ButtonStyle(
                shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
                padding: const MaterialStatePropertyAll(EdgeInsets.all(12)),
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => const Color.fromRGBO(255, 217, 0, 1))),
            child: const Text("Sign In",
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
