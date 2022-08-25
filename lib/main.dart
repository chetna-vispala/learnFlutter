import 'package:flutter/material.dart';
import 'package:learn_datatype/Pages/home_page.dart';
import 'package:learn_datatype/Pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //int age = 27; // only integer (single precision)
    //String name= "Chetna"; // only character
   // bool female = true; //only true/false
    //double value = 55.0; // float number (double precision)
  //  num temp = 30.2;    // use for both int & double datatype
   // var day ="Wednesday"; // compiler automatically knows the type of data on the assigned to variable.
   // const pi = 3.14; //constant value must be fixed
   // final string  = name; // you can change the value


    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      darkTheme: ThemeData(brightness: Brightness.light,
      ),
      initialRoute: "/Login",
      routes: {
        "/" : (context)=>  HomePage(),
        "/Login" : (context)=> LoginPage(),
      },
    );
  }

}
