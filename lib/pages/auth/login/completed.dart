import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_book/utils/constants/colors.dart';
import 'package:poke_book/utils/constants/sizes.dart';
import 'package:poke_book/widgets/auth/auth_button.dart';
import 'package:poke_book/widgets/loading_dialog.dart';

class LoginCompleted extends StatefulWidget {
  const LoginCompleted({Key? key}) : super(key: key);

  @override
  State<LoginCompleted> createState() => _LoginCompletedState();
}

class _LoginCompletedState extends State<LoginCompleted> {
  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      showLoadingDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      key: key,
      body: Container(
        color: Colors.white,
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * .7,
                    margin: const EdgeInsets.only(bottom: 32.0),
                    child: Image.asset('assets/images/login_completed_1.png'),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 30.0,
                    ),
                    width: MediaQuery.of(context).size.width * .8,
                    child: const Text(
                      'Welcome back, Trainer!',
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
                      'We hope you\'ve had a long journey since your last visit.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
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
          primary: true,
          title: 'Continue',
          onTap: () {
            context.goNamed('home');
          },
        ),
      ),
    );
  }
}
