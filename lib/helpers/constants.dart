// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

const kGreenColorShade = Color(0xff1ac714);

const kTextFormFieldDec = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent),
  ),
);

const kTextStyle = TextStyle(color: Colors.black87, fontSize: 15);

PageDecoration kGetPageDecoration() => PageDecoration(
      imageFlex: 2,
      boxDecoration: BoxDecoration(color: Colors.white70),
      titleTextStyle:
          const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      bodyTextStyle: const TextStyle(fontSize: 20),
      descriptionPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
      // imagePadding: const EdgeInsets.all(24),
      // pageColor: Colors.white,
    );

DotsDecorator kGetDotDecoration() => DotsDecorator(
      color: Colors.white70,
      //activeColor: Colors.orange,
      size: const Size(10, 10),
      activeSize: const Size(22, 10),
      activeColor: Colors.yellowAccent,
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
    );

LinearGradient kLinearGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Colors.redAccent,
    Color(0xff1ac714),
  ],
);

const kTextFormFieldAuthDec = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.green),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.redAccent),
  ),
);
