import 'package:flutter/cupertino.dart';

class AuthProvider with ChangeNotifier {
  late TextEditingController _username;
  TextEditingController get username => _username;

  late TextEditingController _password;
  TextEditingController get password => _password;
}
