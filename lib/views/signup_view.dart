import 'package:flutter/material.dart';
import 'package:quizapp/component/color_button.dart';
import 'package:quizapp/component/custom_inputfield.dart';
import 'package:quizapp/component/custom_inputfield_obsecure.dart';
import 'package:quizapp/component/icon_button.dart';
import 'package:quizapp/strings/app_strings.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    borderIconButton(
                      () {
                        Navigator.of(context)
                            .pushNamedAndRemoveUntil('/', (route) => false);
                      },
                    ),
                    const Spacer(),
                    Image.asset(
                      "images/star.png",
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.signup,
                      style: Theme.of(context).primaryTextTheme.headlineMedium,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // input name field
                    Text(AppStrings.name,
                        style: Theme.of(context).textTheme.titleSmall),
                    customInputField(AppStrings.nameHint,
                        Theme.of(context).textTheme.labelSmall),
                    const SizedBox(
                      height: 15,
                    ),
                    // input email field
                    Text(AppStrings.email,
                        style: Theme.of(context).textTheme.titleSmall),
                    customInputField(AppStrings.email,
                        Theme.of(context).textTheme.labelSmall),
                    const SizedBox(
                      height: 15,
                    ),
                    // input phone no field
                    Text(AppStrings.phoneNumber,
                        style: Theme.of(context).textTheme.titleSmall),
                    customInputField(AppStrings.phoneHint,
                        Theme.of(context).textTheme.labelSmall),
                    const SizedBox(
                      height: 15,
                    ),
                    // input password field
                    Text(AppStrings.password,
                        style: Theme.of(context).textTheme.titleSmall),
                    CustomHideInput(
                        text: AppStrings.passwordHint,
                        style: Theme.of(context).textTheme.labelSmall),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Text(AppStrings.agreePolicy,
                    style: Theme.of(context).textTheme.titleSmall),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("our ", style: Theme.of(context).textTheme.titleSmall),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        AppStrings.termsCond,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontFamily: "inter",
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                colorButton(
                  AppStrings.createacc,
                  Theme.of(context).primaryColor,
                  Colors.white,
                  () {
                    print("sign up button");
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppStrings.haveAcc,
                        style: Theme.of(context).textTheme.titleSmall),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            "/signIn", (route) => false);
                      },
                      child: Text(AppStrings.login,
                          style: Theme.of(context).textTheme.titleMedium),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
