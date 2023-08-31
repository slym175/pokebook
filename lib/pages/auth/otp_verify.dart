import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_book/utils/classess/otp_style.dart';
import 'package:poke_book/utils/classess/timer.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/widgets/auth/app_bar.dart';
import 'package:poke_book/widgets/auth/auth_button.dart';
import 'package:poke_book/widgets/form/otp_input.dart';

class OtpVerifyPage extends StatefulWidget {
  const OtpVerifyPage({Key? key}) : super(key: key);

  @override
  State<OtpVerifyPage> createState() => _OtpVerifyPageState();
}

class _OtpVerifyPageState extends State<OtpVerifyPage> {
  OtpFieldController otpFieldController = OtpFieldController();

  late Timer _timer;
  int _start = 60 * 3;
  late String _pin = '';

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
    _pin = '';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: authAppBar(context, title: 'I forgot my password'),
      body: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: AppSizes.pageHorizontalMargin,
        ),
        color: Colors.white,
        child: SingleChildScrollView(
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 32.0),
                const Text(
                  'Enter the code',
                  style: TextStyle(
                    color: AppColors.textBlack,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4.0),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Enter the 6-digit code sent to\n',
                    style: TextStyle(
                      color: AppColors.textDesciprion,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'thuyhu9876@gmail.com',
                        style: TextStyle(
                          color: AppColors.textBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24.0),
                AppOTPInput(
                  controller: otpFieldController,
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: MediaQuery.of(context).size.width / 8,
                  style: const TextStyle(fontSize: 17),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: OTPStyle.box,
                  onCompleted: (pin) {
                    setState(() {
                      _pin = pin;
                    });
                  },
                ),
                const SizedBox(height: 8.0),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Didn\'t receive the code? \n',
                    style: const TextStyle(
                      color: AppColors.textDesciprion,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Resend in ${AppTimer().formatHHMMSS(_start)}",
                        style: const TextStyle(
                          color: AppColors.textBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: AppSizes.pageHorizontalMargin,
        ),
        child: AuthButton(
          disabled: _start == 0 || _pin.isEmpty,
          primary: true,
          title: 'Continue',
          onTap: () {
            context.goNamed('login_completed');
          },
        ),
      ),
    );
  }
}
