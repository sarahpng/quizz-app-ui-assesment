import 'package:flutter/material.dart';

Widget borderIconButton(Function()? onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffD8DADC)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        )),
  );
}
