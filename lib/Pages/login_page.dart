import 'package:flutter/material.dart';
import 'package:learn_datatype/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = ""; //name variable create for OnChange value of user name
  bool changeButton =
      false; // this is using for login button to change the state

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.white,
        home: Scaffold(
          body: SingleChildScrollView(
            //this will solve the screen overflow problem
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/hey.png",
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome $name", //name variable use here when we press OnChange value of user name
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        label: Text("Username"),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value; //here name assign the value of user name
                        setState(() {}); // it change our UI
                      },
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      obscureText: true, //Hidden text
                      decoration: const InputDecoration(
                        hintText: "Enter password",
                        label: Text("Password"),
                      ),

                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        }
                        if (value.length <6) {
                          return "Password length should be at least 6";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: () => moveToHome(context),
                      child: Material(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changeButton
                              ? 50
                              : 150, //using for add animation on login button
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
