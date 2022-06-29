import 'package:flutter/material.dart';
import 'package:se_project/pages/keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailid = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Password Less Authentication System"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: emailid,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2),
                    borderRadius: BorderRadius.circular(30)),
                hintText: 'Enter Email',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString('emailId', emailid.text);
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (c) => Keys()));
                },
                child: Text("Generate Keys"))
          ],
        ),
      ),
    );
  }
}
