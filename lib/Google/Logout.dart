import 'package:flutter/material.dart';
import 'package:flutter_firebase_auths/Google/Users.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Out Page'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // here signOutFunction() method will be called
            signOutFunction();
            Navigator.pop(context);
          },
          color: Colors.orangeAccent,
          child: Text('Sign out ', style: TextStyle(fontSize: 17.0)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}
