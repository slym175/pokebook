import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_book/view_models/app_view_model.dart';
import 'package:poke_book/utils/constants/routers.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    runApp(MainApp(
      sharedPreferences: sharedPreferences,
    ));
  }, (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key, required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late AppViewModel appViewModel = AppViewModel(widget.sharedPreferences);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppViewModel>(create: (_) => appViewModel),
        Provider<AppRouters>(create: (_) => AppRouters(appViewModel)),
      ],
      child: Builder(
        builder: (context) {
          final textTheme = Theme.of(context).textTheme;
          final GoRouter goRouter =
              Provider.of<AppRouters>(context, listen: false).getRouter;
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routeInformationParser: goRouter.routeInformationParser,
            routerDelegate: goRouter.routerDelegate,
            routeInformationProvider: goRouter.routeInformationProvider,
            backButtonDispatcher: goRouter.backButtonDispatcher,
            theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(textTheme),
              useMaterial3: true,
            ),
          );
        },
      ),
    );
  }
}
