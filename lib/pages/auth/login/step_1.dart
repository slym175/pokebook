import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/utils/constants/text_styles.dart';
import 'package:poke_book/widgets/auth/app_bar.dart';
import 'package:poke_book/widgets/auth/auth_button.dart';
import 'package:poke_book/widgets/form/password_input.dart';
import 'package:poke_book/widgets/form/text_input.dart';

class LoginStepOne extends StatefulWidget {
  const LoginStepOne({Key? key}) : super(key: key);

  @override
  State<LoginStepOne> createState() => _LoginStepOneState();
}

class _LoginStepOneState extends State<LoginStepOne> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: authAppBar(context, title: 'Signin'),
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
                  'Welcome back!',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 26.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Text(
                  'Fill in the data',
                  style: TextStyle(
                    color: AppColors.textBlack,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 24.0),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Email',
                          textAlign: TextAlign.left,
                          style: AppTextStyles().labelStyles,
                        ),
                      ),
                      AppTextInput(
                        controller: emailEditingController,
                        hint: 'Email',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter email!';
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                              .hasMatch(value)) {
                            return 'Invalid email!';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        margin: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Password',
                          textAlign: TextAlign.left,
                          style: AppTextStyles().labelStyles,
                        ),
                      ),
                      AppPasswordInput(
                        controller: passwordEditingController,
                        hint: 'Password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password!';
                          } else if (value.length < 8) {
                            return 'Your password must be at least 8 characters long';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                InkWell(
                  onTap: () {
                    context.goNamed('forgot_password');
                  },
                  child: const Text(
                    'Forgot your password?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.btnPrimary,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
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
          title: 'Signin',
          onTap: () {
            context.goNamed('login_completed');
          },
        ),
      ),
    );
  }
}
