import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:poke_book/utils/constants/preference_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppViewModel with ChangeNotifier {
  late final SharedPreferences sharedPreferences;

  final StreamController<bool> _loginStateChange =
      StreamController<bool>.broadcast();
  bool _loginState = false;
  bool _onboardingState = true;

  AppViewModel(this.sharedPreferences);

  bool get loginState => _loginState;
  bool get onboardingState => _onboardingState;

  Stream<bool> get loginStateChange => _loginStateChange.stream;

  set loginState(bool state) {
    sharedPreferences.setBool(AppPreferenceKeys.loginStateKey, state);
    _loginState = state;
    _loginStateChange.add(state);
    notifyListeners();
  }

  set onboardingState(bool value) {
    sharedPreferences.setBool(AppPreferenceKeys.onboardStateKey, value);
    _onboardingState = value;
    notifyListeners();
  }
}
