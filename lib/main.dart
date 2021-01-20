import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_auths/Anonymous/SignIn.dart';
import 'package:flutter_firebase_auths/EmailPassword/Home.dart';
import 'package:flutter_firebase_auths/Google/Home.dart';
import 'package:flutter_firebase_auths/Phone/Home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purple).copyWith(),
      home: HomePage(),
      routes: {
        '/email_pwd': (_) => EmailPasswordAuth(),
        '/phone': (_) => PhoneAuth(),
        '/google': (_) => GoogleAuth(),
        '/guest': (_) => AnonymousAuth()
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Flutter Firebase Authentications'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => Navigator.pushNamed(context, '/guest'),
              child: Text(
                'Continue as Guest',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => Navigator.pushNamed(context, '/email_pwd'),
              child: Text(
                'Continue with Email Password',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => Navigator.pushNamed(context, '/google'),
              child: Text(
                'Continue with Google',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => Navigator.pushNamed(context, '/phone'),
              child: Text(
                'Continue with Phone',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
