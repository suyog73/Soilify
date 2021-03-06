import 'package:flutter/material.dart';
import 'package:soil_doc/helpers/constants.dart';

Widget buttons(
    String string, double width, VoidCallback voidCallback, context) {
  Size size = MediaQuery.of(context).size;
  return InkWell(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    onTap: voidCallback,
    child: Container(
      height: size.width / 8,
      width: size.width / width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kGreenColorShade.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        string,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
    ),
  );
}
