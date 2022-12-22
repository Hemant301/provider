import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class counterProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void setcount() {
    _count++;
    notifyListeners();
  }
}
