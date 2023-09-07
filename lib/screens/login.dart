import 'package:firebaseui/constants/colors.dart';
import 'package:firebaseui/screens/forgot_password.dart';
import 'package:firebaseui/screens/registeration.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const id = 'login_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBGColor,
      body: SafeArea(
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
                child: const Padding(
                  padding: EdgeInsets.only(left: 21),
                  child: TextField(
                    decoration: InputDecoration(
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
                child: const Padding(
                  padding: EdgeInsets.only(left: 21),
                  child: TextField(
                    decoration: InputDecoration(
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
              child: ElevatedButton(
                onPressed: () {},
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
            const SizedBox(
              height: 20,
            ),

            // not a user? register now (Text);

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
                    'Register now',
                    style: TextStyle(color: textButtonColor),
                  ),
                )
              ],
            ),
            // Register Button if needed?(delete text button above);
          ],
        ),
      ),
    );
  }
}
