import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/widgets/auth/app_bar.dart';
import 'package:poke_book/widgets/auth/auth_button.dart';
import 'package:poke_book/widgets/form/text_input.dart';

class RegisterStepThree extends StatefulWidget {
  const RegisterStepThree({Key? key}) : super(key: key);

  @override
  State<RegisterStepThree> createState() => _RegisterStepThreeState();
}

class _RegisterStepThreeState extends State<RegisterStepThree> {
  TextEditingController textEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: authAppBar(context, title: 'Create an account'),
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
                  'To finish',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 26.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Text(
                  'What is your name?',
                  style: TextStyle(
                    color: AppColors.textBlack,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 24.0),
                Form(
                  key: _formKey,
                  child: AppTextInput(
                    controller: textEditingController,
                    hint: 'Name',
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter name!';
                      } else if (value.length < 4) {
                        return 'Your password must be at least 4 characters long';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'This will be your in-app username.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.textDesciprion,
                    fontSize: 12.0,
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
          disabled: _formKey.currentState?.validate() == false ||
              _formKey.currentState?.validate() == null,
          primary: true,
          title: 'Create an account',
          onTap: () {
            context.goNamed('register_completed');
          },
        ),
      ),
    );
  }
}
