// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:soil_doc/helpers/constants.dart';
import 'package:soil_doc/screen/home_page.dart';

User? user = FirebaseAuth.instance.currentUser;

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3, milliseconds: 500),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => HomePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, Suyog',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 40),
            Container(
              child: Lottie.asset(
                'assets/lottie/soil.json',
                repeat: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
