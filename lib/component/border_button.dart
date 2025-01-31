import 'package:flutter/material.dart';

Widget borderButton(
    String title, Color borderColor, Color bgColor, Function()? onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 56,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: borderColor),
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: "inter",
          fontWeight: FontWeight.w700,
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    ),
  );
}
