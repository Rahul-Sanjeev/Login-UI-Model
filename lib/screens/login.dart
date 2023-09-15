import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseui/constants/colors.dart';
import 'package:firebaseui/screens/forgot_password.dart';
import 'package:firebaseui/screens/home.dart';
import 'package:firebaseui/screens/registeration.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  static const id = 'login_page';

// TextEditing controllers;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future signIn() async {
    FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBGColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.android,
                  size: 200,
                  color: Colors.black12,
                ),
                const SizedBox(
                  height: 12,
                ),
                // Hello Again
                const Text(
                  'Hello Again',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Welcome back, you have been missed!',
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Email TextField;
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                // Password TextField;
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 21),
                      child: TextField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250, top: 10),
                  // Forgot Password;
                  child: TextButton(
                    onPressed: () {
                      // navigate to forgot password page;
                      Navigator.pushNamed(context, ForgotPasswordPage.id);
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: textButtonColor),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                // Sign In Button;
                SizedBox(
                  height: 50,
                  width: 350,
                  child: GestureDetector(
                    onTap: signIn,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_emailController.text.isNotEmpty &&
                            _passwordController.text.isNotEmpty) {
                          // navigate to home page;
                          // Navigator.pushNamed(context, HomePage.id);

                          signIn();
                        } else {
                          // Either email or password is empty. Show an error or provide feedback to the user.
                          // For example, you can display a snackbar or a dialog to inform the user.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content:
                                  Text('Please enter both email and password.'),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a user? '),
                    TextButton(
                      onPressed: () {
                        // navigate to registeration page;
                        Navigator.pushNamed(context, RegisterationPage.id);
                      },
                      child: const Text(
                        // not a user? register now (Text);
                        'Register now',
                        style: TextStyle(color: textButtonColor),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
