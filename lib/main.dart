import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    int age = 27; // only integer (single precision)
    String name= "Chetna"; // only character
   // bool female = true; //only true/false
    //double value = 55.0; // float number (double precision)
  //  num temp = 30.2;    // use for both int & double datatype
   // var day ="Wednesday"; // compiler automatically knows the type of data on the assigned to variable.
   // const pi = 3.14; //constant value must be fixed
   // final string  = name; // you can change the value

    return MaterialApp(
      home: Center(
          child: Container(
        child: Text("$name is a $age year old girl"), ///print Chetna is a 27 year old girl
      )),
    );
  }
}
