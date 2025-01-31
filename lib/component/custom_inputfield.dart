import 'package:flutter/material.dart';

Widget customInputField(String hintText, TextStyle? style) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
    child: TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        hintText: hintText,
        hintStyle: style,
      ),
    ),
  );
}
