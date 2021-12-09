  import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/drawer.dart';


  class HomePage extends StatelessWidget {

    const HomePage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {

      final int days = 30;
      return  Scaffold(

        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Center(
          child: Container(
                child: Text("hii $days annesha here"),
           ),
        ),

      drawer: MyDrawer(),);


      // Material(
          //   child: Center(
          //     child: Container(
          //       child: Text("hii $days annesha here"),
          //     ),
          //   ),
          // );
    }
  }
