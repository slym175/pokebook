import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/widgets/auth/app_bar.dart';
import 'package:poke_book/widgets/auth/auth_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: authAppBar(context, title: 'Create an account'),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: width,
          height: height,
          padding: const EdgeInsets.symmetric(
            vertical: 0.0,
            horizontal: AppSizes.pageHorizontalMargin,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * .7,
                child: Image.asset('assets/images/register.png'),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 30.0,
                ),
                width: MediaQuery.of(context).size.width * .8,
                child: const Text(
                  'Not long to explore this world!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textBlack,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                width: MediaQuery.of(context).size.width * .8,
                child: const Text(
                  'How do you want to connect?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              Platform.isIOS == false
                  ? AuthButton(
                      title: 'Continue with Apple',
                      icon: Image.asset(
                        "assets/logos/apple.png",
                        width: 24.0,
                        height: 24.0,
                      ),
                      onTap: () {
                        if (kDebugMode) {
                          print('Continue with Apple');
                        }
                      },
                    )
                  : const SizedBox(),
              Platform.isIOS == false
                  ? const SizedBox(height: 12.0)
                  : const SizedBox(),
              AuthButton(
                title: 'Continue with Google',
                icon: Image.asset(
                  "assets/logos/google.png",
                  width: 24.0,
                  height: 24.0,
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Continue with Google');
                  }
                },
              ),
              const SizedBox(height: 12.0),
              AuthButton(
                primary: true,
                title: 'Continue with an email',
                onTap: () {
                  context.goNamed('register_step_1');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
