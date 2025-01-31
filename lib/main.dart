import 'package:flutter/material.dart';
import 'package:quizapp/theme/theme.dart';
import 'package:quizapp/views/landing_view.dart';
import 'package:quizapp/views/signin_view.dart';
import 'package:quizapp/views/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizEra',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routes: {
        '/': (context) => const LandingView(),
        '/signIn': (context) => const SigninView(),
        '/signUp': (context) => const SignupView(),
      },
    );
  }
}
