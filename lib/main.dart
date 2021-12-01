import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // int days = 30;
    // num temp = 11.12; // num dono leta hai
    // var temncp = "tuesday"; // var kpo v data type le leta hai
    return MaterialApp(
      home: HomePage(),);
  }
}
