import 'package:flutter/material.dart';
import 'package:quizapp/component/border_button.dart';
import 'package:quizapp/component/color_button.dart';
import 'package:quizapp/strings/app_strings.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: (screenSize.width / 100) * 80,
                child: Image.asset(
                  "images/logo.png",
                ),
              ),
              Text(
                AppStrings.appName,
                style: Theme.of(context).primaryTextTheme.displayMedium,
              ),
              Text(
                AppStrings.appSlogan,
                style: Theme.of(context).primaryTextTheme.titleMedium,
              ),
              const SizedBox(
                height: 15,
              ),
              colorButton(
                "Sign In",
                Theme.of(context).primaryColor,
                Colors.white,
                () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/signIn', (route) => false);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              borderButton(
                "Create Account",
                const Color(0xff747474),
                Colors.white,
                () {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil('/signUp', (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
