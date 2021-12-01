import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  //const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text("LOGIN PAGE" ,
          style: TextStyle(

            fontSize: 40,
            color: Colors.blue,
            fontWeight:FontWeight.bold,

        ),),
      ),
    );
  }
}
