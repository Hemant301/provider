import 'dart:developer';

import 'package:flutter/widgets.dart';

class AuthProvider extends ChangeNotifier {
  AuthProvider() : super() {
    initControllers();
  }
  late TextEditingController _username;
  TextEditingController get username => _username;
  late TextEditingController _password;
  TextEditingController get password => _password;

  void initControllers() {
    _username = TextEditingController();
    _password = TextEditingController();
  }

  void authlogin() {
    log(_password.text.toString());
    log(_username.text.toString());
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }
}
