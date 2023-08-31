import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_book/view_models/app_view_model.dart';
import 'package:poke_book/utils/constants/colors.dart';

class OnboardPage extends StatefulWidget {
  const OnboardPage({Key? key, required this.appViewModel}) : super(key: key);

  final AppViewModel appViewModel;

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  final PageController _pageController = PageController();
  final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "All Pokémon in One Place",
      description:
          "Access a vast roster of Pokémon from every generation ever made by Nintendo",
      imgUrl: "assets/images/onboard_1.png",
    ),
    const OnBoardModel(
      title: "Keep your Pokédex up to date",
      description:
          "Sign up and keep your profile, favorite Pokemon, settings and more saved in the app, even without an internet connection.",
      imgUrl: 'assets/images/onboard_2.png',
    ),
    const OnBoardModel(
      title: "Are you ready for this adventure?",
      description:
          "Just create an account and start exploring the world of Pokémon today!",
      imgUrl: 'assets/images/onboard_3.png',
    ),
  ];

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      widget.appViewModel.onboardingState = false;
      context.goNamed('register');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoard(
        pageController: _pageController,
        onBoardData: onBoardData,
        imageWidth: MediaQuery.of(context).size.width / 1.25,
        titleStyles: const TextStyle(
          color: AppColors.textBlack,
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.15,
        ),
        descriptionStyles: const TextStyle(
          fontSize: 12.0,
          color: AppColors.textSecondary,
        ),
        pageIndicatorStyle: const PageIndicatorStyle(
          width: 80,
          inactiveColor: AppColors.btnInactivePrimary,
          activeColor: AppColors.btnPrimary,
          inactiveSize: Size(8, 8),
          activeSize: Size(12, 12),
        ),
        skipButton: TextButton(
          onPressed: () {
            widget.appViewModel.onboardingState = false;
            context.goNamed('home');
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                "Skip",
                style: TextStyle(
                  color: AppColors.textBlack,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(width: 6.0),
              Icon(
                TablerIcons.arrow_right,
                color: AppColors.textBlack,
                size: 18.0,
              )
            ],
          ),
        ),
        nextButton: OnBoardConsumer(
          builder: (context, ref, child) {
            final state = ref.watch(onBoardStateProvider);
            return Column(
              children: <Widget>[
                InkWell(
                  onTap: () => _onNextTap(state),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.btnPrimary,
                    ),
                    child: Text(
                      state.isLastPage ? "Create an account" : "Continue",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
                state.isLastPage
                    ? InkWell(
                        onTap: () {
                          widget.appViewModel.onboardingState = false;
                          context.goNamed('login');
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 8.0),
                          child: const Text(
                            'I already have an account',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w600,
                              color: AppColors.btnPrimary,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox()
              ],
            );
          },
        ),
      ),
    );
  }
}
