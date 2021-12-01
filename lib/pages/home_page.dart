  import 'package:flutter/material.dart';


  class HomePage extends StatelessWidget {

    const HomePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {

      final int days = 30;
      return  Scaffold(

        appBar: AppBar(
          title: Text("heloo flutter"),
        ),
        body: Center(
          child: Container(
                child: Text("hii $days annesha here"),


           ),
        ),

      drawer: Drawer(),);


      // Material(
          //   child: Center(
          //     child: Container(
          //       child: Text("hii $days annesha here"),
          //     ),
          //   ),
          // );
    }
  }
