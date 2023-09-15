import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseui/screens/home.dart';
import 'package:firebaseui/screens/login.dart';
import 'package:flutter/material.dart';

class FirebasePage extends StatelessWidget {
  const FirebasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          // if else statement;
          return snapshot.hasData ? const HomePage() : LoginPage();
        },
      ),
    );
  }
}
