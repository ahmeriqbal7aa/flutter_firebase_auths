import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
// import 'package:/google_authentication/Logout.dart';
import 'package:flutter_firebase_auths/Google/Logout.dart';
import 'package:flutter_firebase_auths/Google/Users.dart';

final fireStore = FirebaseFirestore.instance;

class GoogleAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.orange),
      routes: {'/logout': (context) => LogoutPage()},
      home: GooglePage(),
    );
  }
}

class GooglePage extends StatefulWidget {
  @override
  _GooglePageState createState() => _GooglePageState();
}

class _GooglePageState extends State<GooglePage> {
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
              'Google Authentication',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 40.0),
            GoogleSignInButton(
              darkMode: true,
              onPressed: () {
                signInWithGoogle().then((value) {
                  fireStore
                      .collection('users')
                      .doc('auth')
                      .collection('googleUsers')
                      .add(
                          {'name': name, 'imageUrl': imageUrl, 'email': email});
                }).catchError((e) {
                  print(e);
                }).then((value) {
                  Navigator.pushNamed(context, '/logout');
                }).catchError((e) {
                  print(e);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
