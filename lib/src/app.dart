
import 'package:contador/src/pages/contador_page.dart';
import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    



    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(child:contadorPage()
      
      ),
    );
  }

}