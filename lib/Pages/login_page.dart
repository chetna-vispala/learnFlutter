import 'package:flutter/material.dart';
import 'package:learn_datatype/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        color: Colors.white,
      home:Scaffold(
        body: SingleChildScrollView( //this will solve the screen overflow problem
          child: Column(
            children: [
              Image.asset("assets/images/login.png",
                fit: BoxFit.cover,
            ),
              const SizedBox(height: 20,),
              const Text("Welcome",
              style: TextStyle(
                color:Colors. blue,
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
              ),

              const SizedBox(height: 20),
              TextFormField(
                obscureText: true, //Hidden text
                decoration: const InputDecoration(
                  hintText: "Enter password",
                  label: Text("Password"),
                ),
              ),

              const SizedBox(height: 40),
              ElevatedButton(onPressed:(){
               Navigator.pushNamed(context, MyRoutes.homeRoutes);
              },
                child: Text("Login"),
              style: TextButton.styleFrom(
                minimumSize: Size(200, 50),
                shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
              ),
              )

            ],
          ),
        ),
      )
    );
  }
}
