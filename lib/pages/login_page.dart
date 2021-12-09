import 'package:flutter/material.dart';
import 'package:flutter_app/utilites/Routes.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name="";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formkey.currentState!.validate()){
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });}
    }
  @override
  Widget build(BuildContext context) {
   return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Column(
                children: [
                  Image.asset("assets/image/login_Image.png",fit: BoxFit.cover,
                  height: 300,),
                  const SizedBox(height: 20),
                  Text("Welcome $name", style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Enter username",
                              labelText: "Username",
                          ),

                          validator: (value){
                            if(value!.isEmpty){
                              return "UserName cannot be empty";
                            }
                            else{
                              return null;
                            }
                          },

                          onChanged: (values){
                            name = values;
                            setState(() {
                            });
                          },
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                              hintText: "Enter password",
                              labelText: "password"

                          ),
                          validator: (value){
                            if(value!.isEmpty){
                              return "password cannot be empty";
                            }
                            else if(value.length<6){
                              return "password cannot ne less than 6 digit";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),


                    InkWell(
                      onTap:()=>moveToHome(context),
                      child: AnimatedContainer(
                        height: 40,
                        duration: Duration(seconds: 1),
                        width: changebutton? 40:140,
                        alignment: Alignment.center,
                        child: changebutton?const Icon(Icons.done): const Text("login",
                          style:
                          TextStyle(
                              color:Colors.white,
                              fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),),
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          shape: changebutton? BoxShape.circle:BoxShape.rectangle,
                          //borderRadius: BorderRadius.circular(5),


                        ),

                      ),
                    ),



                  // ElevatedButton(
                  //   child:Text("Login"),
                  // style: TextButton.styleFrom(minimumSize: Size(150, 45)),
                  // onPressed: (){
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  // },)

                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}
