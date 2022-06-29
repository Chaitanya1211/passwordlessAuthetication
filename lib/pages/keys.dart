import 'package:flutter/material.dart';

class Keys extends StatefulWidget {
  const Keys({Key? key}) : super(key: key);

  @override
  State<Keys> createState() => _KeysState();
}

class _KeysState extends State<Keys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Your Keys have been generated"),
              decoration: BoxDecoration(color: Colors.amber),
              padding: EdgeInsets.all(10),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text("Your Public key is "),
              decoration: BoxDecoration(color: Colors.amber),
              padding: EdgeInsets.all(10),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Public key will be displayed here"),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text("Your Private key is "),
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(2.0)),
              padding: EdgeInsets.all(10),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Path of the private key will be displayed here"),
          ],
        ),
      ),
    );
  }
}
