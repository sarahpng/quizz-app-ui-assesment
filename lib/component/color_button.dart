import 'package:flutter/material.dart';

Widget colorButton(
    String title, Color bgColor, Color txtColor, Function()? onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 56,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "inter",
          fontWeight: FontWeight.bold,
          color: txtColor,
          fontSize: 16,
        ),
      ),
    ),
  );
}
