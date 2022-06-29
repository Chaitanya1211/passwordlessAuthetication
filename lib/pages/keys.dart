import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:se_project/helper/function.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Keys extends StatefulWidget {
  const Keys({Key? key}) : super(key: key);

  @override
  State<Keys> createState() => _KeysState();
}

class _KeysState extends State<Keys> {
  var data;
  var privatekey;
  var publickey;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                child: TextButton(
                  onPressed: () async {
                    data = await fetchdata();
                    publickey = data['public'];
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.setString('publicKey', publickey);
                    print('public key1 $publickey');
                    setState(() {
                      publickey = data['public'];
                    });
                  },
                  child: Text("Public key"),
                ),
                decoration: BoxDecoration(color: Colors.amber),
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Public key: $publickey"),
              SizedBox(
                height: 30,
              ),
              Container(
                child: TextButton(
                  onPressed: () async {
                    data = await fetchdata();
                    privatekey = data['private'];
                    print("private key $privatekey");
                     final prefs = await SharedPreferences.getInstance();
                    await prefs.setString('privateKey', privatekey);
                    setState(() {
                       privatekey = data['private'];
                    });
                  },
                  child: Text("private key"),
                ),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(2.0)),
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Path of the private key will be displayed here $privatekey"),
            ],
          ),
        ),
      ),
    );
  }
}
