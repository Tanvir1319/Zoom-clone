import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';

import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Start or Join a meeting',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 31.0),
              child: Image.asset('assets/images/onboarding.jpg'),
            ),
            CustomButton(text: 'Login With Google', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
