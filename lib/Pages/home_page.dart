import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int age = 27; // only integer (single precision)
    const String name = "Chetna Singh"; // only character


    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog"),
      ),
      body: Center(
          child: Container(
            child: const Text("My name is $name and i'm $age year old"),///print Chetna is a 27 year old girl
          )),
      drawer: const Drawer(),
    );
  }
}
