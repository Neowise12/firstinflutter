import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class  MyApp extends StatelessWidget {
 // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // int days = 30;
    // num temp = 11.12; // num dono leta hai
    // var temncp = "tuesday"; // var kpo v data type le leta hai
    return  MaterialApp(

      themeMode:ThemeMode.light,
      theme: ThemeData(primarySwatch:Colors.purple,
          //primaryTextTheme: GoogleFonts.latoTextTheme()
          fontFamily: GoogleFonts.lato().fontFamily),

      darkTheme: ThemeData(
        brightness: Brightness.dark,

    ),
      // home : HomePage();
        initialRoute: "/loginpage",
       routes: {

         "/":(context)=> HomePage(),
         "/homepage":(context)=> HomePage(),
        "/loginpage":(context)=> LoginPage()
       },  );
  }
}
