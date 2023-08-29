import 'package:flutter/material.dart';

import '../widgets/Email_input_field.dart';
import '../widgets/Login_button.dart';
import '../widgets/Password_input_field.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});

  /*
  
*Login Page
-Header saying "Login"
-Email input field
-Password input field
-Login button
-Link saying "Forgot Password?"

  
  */
  TextEditingController? emailController;
  TextEditingController? passwordController;
  bool isPasswordVisible1 = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var emailAndPassword = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                E_mail_input_field(emailController: emailController),
                Password_input_field(
                    passwordController: passwordController,
                    isPasswordVisible1: isPasswordVisible1),
                SizedBox(
                  height: 20,
                ),
                Login_button(
                    emailAndPassword: emailAndPassword, formKey: _formKey),
              ],
            ),
          ),
        ));
  }
}
