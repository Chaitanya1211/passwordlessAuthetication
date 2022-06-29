import 'package:flutter/material.dart';
import 'package:se_project/pages/loginPage.dart';
import 'package:se_project/pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo', 
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
