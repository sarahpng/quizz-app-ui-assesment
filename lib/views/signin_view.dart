import 'package:flutter/material.dart';
import 'package:quizapp/component/color_button.dart';
import 'package:quizapp/component/custom_inputfield.dart';
import 'package:quizapp/component/custom_inputfield_obsecure.dart';
import 'package:quizapp/component/icon_button.dart';
import 'package:quizapp/strings/app_strings.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
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
                    Row(
                      children: [
                        Text(
                          AppStrings.wlcMsg,
                          style:
                              Theme.of(context).primaryTextTheme.headlineMedium,
                        ),
                        Image.asset(
                          "images/hand.png",
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
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
                        text: AppStrings.password,
                        style: Theme.of(context).textTheme.labelSmall),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            print("forget passoword screen");
                          },
                          child: Text(AppStrings.forgotPassword,
                              style: Theme.of(context).textTheme.titleSmall),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    colorButton(
                      AppStrings.login,
                      Theme.of(context).primaryColor,
                      Colors.white,
                      () {
                        print("login button");
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.newAcc,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                "/signUp", (route) => false);
                          },
                          child: Text(
                            AppStrings.signup,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
