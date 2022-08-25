import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        color: Colors.white,
      home:Scaffold(
        body: Column(
          children: [
            Image.asset("assets/images/login.png",
              fit: BoxFit.cover,
          ),
            const SizedBox(height: 20,),
            const Text("Welcome",
            style: TextStyle(
              color:Colors. blue,
              fontWeight: FontWeight.bold,
            ),
            ),
             const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter Username",
                label: Text("Username"),
              ),
            ),

            const SizedBox(height: 20),
            TextFormField(
              obscureText: true, //Hidden text
              decoration: const InputDecoration(
                hintText: "Enter password",
                label: Text("Password"),
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton(onPressed:(){},
              child: const Text("Login"),
            //style: TextButton.styleFrom(),
            )

          ],
        ),
      )
    );
  }
}
