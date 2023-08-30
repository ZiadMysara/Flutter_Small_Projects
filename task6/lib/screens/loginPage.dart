import 'package:flutter/material.dart';



class loginPage extends StatefulWidget {
  loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  /*
  
*Login Page
-Header saying "Login"
-Email input field
-Password input field
-Login button
-Link saying "Forgot Password?"

  
  */
  String? emailController;

  String? passwordController;

  bool isPasswordVisible1 = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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

    bool EmailAcepted2(int x) {
      if (x != -1)
        return true;
      else
        return false;
    }

    bool PasswordAcepted(int x, passwordController) {
      if (emailAndPassword[x].values.elementAt(0) ==
          passwordController.toString())
        return true;
      else
        return false;
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
          centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                        labelText: "E_mail"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your email";
                      } else if (!value.contains("@")) {
                        return "Please enter a valid email";
                      } else if (!EmailAcepted(value)) {
                        return "not found";
                      } else {
                        emailController = value;
                      }
                    },
                  ),
                ),
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          bool temp;
                          temp = _formKey.currentState!.validate();
                          int x = foundInEmail(emailController);
                          bool temp2;
                          EmailAcepted2(x)
                              ? temp2 = PasswordAcepted(x, passwordController)
                              : temp2 = false;
                          if (temp && temp2) {
                            Navigator.pushNamed(context, "HomePage");
                          } else {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Wrong password')),
                            );
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
                        child: const Text("Log In",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, "ForgotPasswordPage", arguments: emailAndPassword);
                    }, child: Text("Forgot Password?")),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
