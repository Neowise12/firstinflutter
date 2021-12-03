import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(

      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/image/login_Image.png",fit: BoxFit.cover,),
          const SizedBox(height: 20),
          const Text("Welcome", style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username"

                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "password"

                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton( child:Text("Login"),
          style: TextButton.styleFrom(),
          onPressed: (){},)
          
        ],
      ),

    );
  }
}
