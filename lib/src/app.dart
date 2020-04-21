import 'package:accountant_hrdf1/src/pages/contador.dart';
import 'package:flutter/material.dart';

//import 'package:accountant_hrdf1/src/pages/home.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: ContadorPage()
      )
    );
  }
}