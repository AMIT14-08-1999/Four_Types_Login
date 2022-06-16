import 'package:firebase/firebase_options.dart';
import 'package:firebase/screens/login_Screen.dart';
import 'package:firebase/screens/login_email_password_screen.dart';
import 'package:firebase/screens/phone_screen.dart';
import 'package:firebase/screens/signup_email_password_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      routes: {
        EmailPasswordSignup.routeName: (context) => const EmailPasswordSignup(),
        EmailPasswordLogin.routeName: (context) => const EmailPasswordLogin(),
        PhoneScreen.routeName: (context) => const PhoneScreen(),
      },
    );
  }
}


//flutterfire config \ --project=fir-flutter-auth-a6e6f \ --out=lib/firebase_options.dart \ --android-app-id=com.example.firebase
//keytool -list -v -keystore "C:\Users\Amit Ghosh\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android