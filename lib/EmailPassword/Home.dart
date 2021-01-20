import 'package:flutter/material.dart';
import 'package:flutter_firebase_auths/EmailPassword//SignIn.dart';
import 'package:flutter_firebase_auths/EmailPassword//SignUp.dart';
import 'package:flutter_firebase_auths/EmailPassword//SignOut.dart';

class EmailPasswordAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.orange),
      home: SignInPage(),
      routes: {
        // '/SignUP': (context) => SignUp(),
        // ======== OR we can Write ======== //
        '/SignIn': (_) => SignInPage(),
        '/SignUp': (_) => SignUpPage(),
        '/SignOut': (_) => SignOutPage(),
      },
    );
  }
}
