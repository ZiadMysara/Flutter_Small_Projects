import 'package:flutter/material.dart';

class E_mail_input_field extends StatefulWidget {
  final TextEditingController? emailController;
  const E_mail_input_field({super.key, required this.emailController});

  @override
  State<E_mail_input_field> createState() => _E_mail_input_fieldState();
}

class _E_mail_input_fieldState extends State<E_mail_input_field> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      
      height: 70,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.emailController,
        showCursor: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            labelText: "E_mail"),
        validator: (value) {
          if (value!.isEmpty) {
            return "Please enter your email";
          } else if (!value.contains("@")) {
            return "Please enter a valid email";
          }
        },
      ),
    );
  }
}
