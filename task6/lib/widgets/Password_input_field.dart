import 'package:flutter/material.dart';

class Password_input_field extends StatefulWidget {
  final TextEditingController? passwordController;
  bool isPasswordVisible1;
  Password_input_field(
      {super.key,
      required this.passwordController,
      required this.isPasswordVisible1});

  @override
  State<Password_input_field> createState() => _Password_input_fieldState();
}

class _Password_input_fieldState extends State<Password_input_field> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.passwordController,
        obscureText: widget.isPasswordVisible1,
        showCursor: true,
        decoration: InputDecoration(
            suffix: IconButton(
                onPressed: () {
                  setState(() {
                    widget.isPasswordVisible1 = !widget.isPasswordVisible1;
                  });
                },
                icon: widget.isPasswordVisible1
                    ? Icon(Icons.remove_red_eye)
                    : Icon(Icons.visibility_off)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: "Password"),
        validator: (value) {
          if (value!.isEmpty) {
            return "Please enter your Password";
          } else if (value.length >= 8) {
            return "Please enter a valid Password";
          }
        },
      ),
    );
  }
}
