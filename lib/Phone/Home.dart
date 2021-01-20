import 'package:flutter/material.dart';
import 'package:flutter_firebase_auths/Phone/Login.dart';

class PhoneAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.orange),
      home: LoginPage(),
    );
  }
}
