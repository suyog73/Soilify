// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:soil_doc/helpers/constants.dart';

class VegetablesDescription extends StatefulWidget {
  const VegetablesDescription({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<VegetablesDescription> createState() => _VegetablesDescriptionState();
}

class _VegetablesDescriptionState extends State<VegetablesDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: kGreenColorShade,
      ),
      body: Column(
        children: [Text("Hello")],
      ),
    );
  }
}
