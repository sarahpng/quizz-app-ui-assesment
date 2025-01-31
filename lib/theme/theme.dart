import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// const headingFont = GoogleFonts.poppinsTextTheme();
final ThemeData appTheme = ThemeData(
  splashColor: Colors.transparent,
  primaryTextTheme: const TextTheme(
    // appname in title screen style
    displayMedium: TextStyle(
      fontFamily: "poppins",
      fontWeight: FontWeight.w700,
      color: Color(0xff576CC7),
    ),
    // slogan style
    titleMedium: TextStyle(
      fontFamily: "inter",
      fontWeight: FontWeight.w700,
      color: Color(0xff576CC7),
      fontSize: 17,
    ),
    // main heading on login and signup style
    headlineMedium: TextStyle(
        fontFamily: "poppins",
        color: Colors.black,
        fontWeight: FontWeight.w700),
  ),
  // textfields info style
  textTheme: const TextTheme(
    labelMedium: TextStyle(
      fontFamily: "inter",
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w800,
    ),
    labelSmall: TextStyle(
      fontFamily: "inter",
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    ),
    titleSmall: TextStyle(
      fontFamily: "inter",
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontFamily: "inter",
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    // hint text style
  ),

  primaryColor: const Color(0xff576CC7),
  canvasColor: Colors.white,
);
