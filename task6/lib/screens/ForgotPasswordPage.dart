import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

/*
*Forgot Password Page
-Header saying "Reset Password"
-Email input field
-Submit button
*/

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    var emailAndPassword = ModalRoute.of(context)!.settings.arguments as List;

    int foundInEmail(emailController) {
      for (int i = 0; i < emailAndPassword.length; i++) {
        if (emailAndPassword[i].keys.elementAt(0) == emailController) {
          return i; // Adding 1 to match your requirement of returning 1-based index
        }
      }
      return -1; // Return 0 if the email is not found
    }

    bool EmailAcepted(String emailController) {
      int x = foundInEmail(emailController);
      if (x != -1)
        return true;
      else
        return false;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            
            children: [
              SizedBox(
                height: 70,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  showCursor: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "E_mail",
                    hintText: "Enter your email",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your email";
                    } else if (!value.contains("@")) {
                      return "Please enter a valid email";
                    } else if (!EmailAcepted(value)) {
                      return "not found";
                    }
                    return null;
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        bool temp;
                        temp = _formKey.currentState!.validate();
                        if (!temp) {
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text('please Enter valid email')));
                        } else {
                          ScaffoldMessenger.of(context).clearSnackBars();
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content:
                                  Text('password reset link sent to your email')));
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
                      child: const Text("Submit",
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
