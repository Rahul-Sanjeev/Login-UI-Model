import 'package:firebaseui/screens/Login.dart';
import 'package:firebaseui/screens/forgot_password.dart';
import 'package:firebaseui/screens/registeration.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => const LoginPage(),
        RegisterationPage.id: (context) => const RegisterationPage(),
        ForgotPasswordPage.id: (context) => const ForgotPasswordPage(),
      },
    );
  }
}
