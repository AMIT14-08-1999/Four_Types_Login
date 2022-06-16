import 'package:firebase/screens/login_email_password_screen.dart';
import 'package:firebase/screens/phone_screen.dart';
import 'package:firebase/screens/signup_email_password_screen.dart';
import 'package:firebase/services/firebase_auth_methods.dart';
import 'package:firebase/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
          children: [
            CustomButton(
              text: "Email/Password Sign Up",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  EmailPasswordSignup.routeName,
                );
              },
            ),
            CustomButton(
              text: "Email/Password Login Up",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  EmailPasswordLogin.routeName,
                );
              },
            ),
            CustomButton(
              text: "Phone Sign In",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  PhoneScreen.routeName,
                );
              },
            ),
            CustomButton(
              text: "Google Sign In",
              onTap: () {
                FirebaseAuthMethods(FirebaseAuth.instance)
                    .signInWithGoogle(context);
              },
            ),
            CustomButton(
              text: "Facebook Sign In",
              onTap: () {},
            ),
            CustomButton(
              text: "Anonymous Sign In",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
