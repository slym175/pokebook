import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:poke_book/pages/account.dart';
import 'package:poke_book/pages/auth/forgot_password.dart';
import 'package:poke_book/pages/auth/login.dart';
import 'package:poke_book/pages/auth/login/completed.dart';
import 'package:poke_book/pages/auth/login/step_1.dart';
import 'package:poke_book/pages/auth/otp_verify.dart';
import 'package:poke_book/pages/auth/register.dart';
import 'package:poke_book/pages/auth/register/completed.dart';
import 'package:poke_book/pages/auth/register/step_1.dart';
import 'package:poke_book/pages/auth/register/step_2.dart';
import 'package:poke_book/pages/auth/register/step_3.dart';
import 'package:poke_book/pages/error.dart';
import 'package:poke_book/pages/favorites.dart';
import 'package:poke_book/pages/home.dart';
import 'package:poke_book/pages/onboard.dart';
import 'package:poke_book/pages/regions.dart';
import 'package:poke_book/pages/utils/about_us.dart';
import 'package:poke_book/pages/utils/help_center.dart';
import 'package:poke_book/pages/utils/term_condition.dart';
import 'package:poke_book/view_models/app_view_model.dart';

class RouterTransitionFactory {
  static CustomTransitionPage getTransitionPage(
      {required BuildContext context,
      required GoRouterState state,
      required Widget child,
      required String type}) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        switch (type) {
          case 'fade':
            return FadeTransition(
                opacity: CurveTween(curve: Curves.easeIn).animate(animation),
                child: child);
          case 'rotation':
            return RotationTransition(turns: animation, child: child);
          case 'size':
            return SizeTransition(sizeFactor: animation, child: child);
          case 'scale':
            return ScaleTransition(scale: animation, child: child);
          default:
            return FadeTransition(opacity: animation, child: child);
        }
      },
    );
  }
}

class AppRouters {
  late final AppViewModel appViewModel;

  AppRouters(this.appViewModel);

  late final GoRouter router = GoRouter(
    refreshListenable: appViewModel,
    initialLocation: appViewModel.onboardingState ? '/onboard' : '/',
    errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        name: 'home',
        pageBuilder: (context, state) =>
            RouterTransitionFactory.getTransitionPage(
          context: context,
          state: state,
          child: HomePage(appViewModel: appViewModel),
          type: 'fade', // fade|rotation|scale|size
        ),
        routes: <RouteBase>[
          GoRoute(
            path: 'onboard',
            name: 'onboard',
            pageBuilder: (context, state) =>
                RouterTransitionFactory.getTransitionPage(
              context: context,
              state: state,
              child: OnboardPage(appViewModel: appViewModel),
              type: 'fade', // fade|rotation|scale|size
            ),
          ),
          GoRoute(
            path: 'regions',
            name: 'regions',
            pageBuilder: (context, state) =>
                RouterTransitionFactory.getTransitionPage(
              context: context,
              state: state,
              child: RegionsPage(appViewModel: appViewModel),
              type: 'fade', // fade|rotation|scale|size
            ),
          ),
          GoRoute(
            path: 'favorites',
            name: 'favorites',
            pageBuilder: (context, state) =>
                RouterTransitionFactory.getTransitionPage(
              context: context,
              state: state,
              child: FavoritesPage(appViewModel: appViewModel),
              type: 'fade', // fade|rotation|scale|size
            ),
          ),
          GoRoute(
            path: 'account',
            name: 'account',
            pageBuilder: (context, state) =>
                RouterTransitionFactory.getTransitionPage(
              context: context,
              state: state,
              child: AccountPage(appViewModel: appViewModel),
              type: 'fade', // fade|rotation|scale|size
            ),
          ),
          GoRoute(
            path: 'term-conditions',
            name: 'term_conditions',
            pageBuilder: (context, state) =>
                RouterTransitionFactory.getTransitionPage(
              context: context,
              state: state,
              child: const TermConditionPage(),
              type: 'fade', // fade|rotation|scale|size
            ),
          ),
          GoRoute(
            path: 'help-center',
            name: 'help_center',
            pageBuilder: (context, state) =>
                RouterTransitionFactory.getTransitionPage(
              context: context,
              state: state,
              child: const HelpCenterPage(),
              type: 'fade', // fade|rotation|scale|size
            ),
          ),
          GoRoute(
            path: 'about-us',
            name: 'about_us',
            pageBuilder: (context, state) =>
                RouterTransitionFactory.getTransitionPage(
              context: context,
              state: state,
              child: const AboutUsPage(),
              type: 'fade', // fade|rotation|scale|size
            ),
          ),
        ],
      ),
      GoRoute(
        path: '/forgot-password',
        name: 'forgot_password',
        builder: (BuildContext context, GoRouterState state) {
          return const ForgotPasswordPage();
        },
      ),
      GoRoute(
        path: '/opt-verify',
        name: 'opt_verify',
        builder: (BuildContext context, GoRouterState state) {
          return const OtpVerifyPage();
        },
      ),
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'step_1',
            name: 'login_step_1',
            builder: (BuildContext context, GoRouterState state) {
              return const LoginStepOne();
            },
          ),
          GoRoute(
            path: 'complete',
            name: 'login_completed',
            builder: (BuildContext context, GoRouterState state) {
              return const LoginCompleted();
            },
          ),
        ],
      ),
      GoRoute(
        path: '/register',
        name: 'register',
        builder: (BuildContext context, GoRouterState state) {
          return const RegisterPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'step_1',
            name: 'register_step_1',
            builder: (BuildContext context, GoRouterState state) {
              return const RegisterStepOne();
            },
          ),
          GoRoute(
            path: 'step_2',
            name: 'register_step_2',
            builder: (BuildContext context, GoRouterState state) {
              return const RegisterStepTwo();
            },
          ),
          GoRoute(
            path: 'step_3',
            name: 'register_step_3',
            builder: (BuildContext context, GoRouterState state) {
              return const RegisterStepThree();
            },
          ),
          GoRoute(
            path: 'complete',
            name: 'register_completed',
            builder: (BuildContext context, GoRouterState state) {
              return const RegisterCompleted();
            },
          ),
        ],
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      return null;
    },
  );

  GoRouter get getRouter {
    return router;
  }
}
