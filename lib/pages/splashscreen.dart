import 'dart:async';

import 'package:flutter/material.dart';
import 'package:se_project/pages/loginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'keys.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    final prefs = await SharedPreferences.getInstance();
    var email = prefs.getString('emailId');
    print("emailid $email");
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (c) => email == null ? const LoginPage() : Keys()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              child: Text(
        "Passwordless Authentication",
        style: TextStyle(fontSize: 20, color: Colors.red),
      ))),
    );
  }
}
