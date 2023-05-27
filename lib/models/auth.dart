import 'package:flutter/material.dart';

class AuthModel with ChangeNotifier {
  bool _authState = false;
  String _email = '';

  set authState(newValue) {
    _authState = newValue;
    notifyListeners();
  }

  bool get authState => _authState;

  set email(newValue) {
    _email = newValue;
    notifyListeners();
  }

  String get email => _email;
}
