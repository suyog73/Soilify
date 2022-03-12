// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:soil_doc/screen/Auth%20Screens/onboarding_screen.dart';
import 'package:soil_doc/screen/Auth%20Screens/register_screen.dart';
import 'package:soil_doc/screen/card_screen.dart';
import 'package:soil_doc/screen/welcome_screen.dart';
import 'package:soil_doc/services/get_user_data.dart';

User? user = FirebaseAuth.instance.currentUser;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Soil Doctor',
      home: user == null ? OnBoardingScreen() : GetUserData(),
      // home: CardScreen(),
    );
  }
}
