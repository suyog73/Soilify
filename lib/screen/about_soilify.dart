// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:soil_doc/helpers/constants.dart';

class AboutSoilify extends StatelessWidget {
  const AboutSoilify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGreenColorShade,
        title: Text(
          "Soilify",
          style: TextStyle(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Text(
              "Soilify is a app which will be specifically focused on the problems of farmers and it gives the different methods of farming according to soil app",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 28,
              ),
            ),
          ),
          Lottie.asset(
            'assets/lottie/lo.json',
          ),
        ],
      ),
    );
  }
}
