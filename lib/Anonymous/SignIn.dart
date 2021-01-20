import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auths/Anonymous/SignOut.dart';

class AnonymousAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.orange),
      routes: {'/logout': (context) => SignOutPage()},
      home: SignInPage(),
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign In Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Anonymous Authentication',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 40.0),
            RaisedButton(
              onPressed: () {
                FirebaseAuth.instance.signInAnonymously().then((firebaseUser) {
                  Navigator.pushNamed(context, '/logout');
                }).catchError((e) {
                  print(e);
                });
              },
              color: Colors.orangeAccent,
              child: Text('Sign In ', style: TextStyle(fontSize: 17.0)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            ),
          ],
        ),
      ),
    );
  }
}
