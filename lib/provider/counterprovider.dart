import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class counterProvider with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  int _c = 0;
  int get c => _c;
  void setValue() {
    _c++;
    notifyListeners();
  }

  void setcount() {
    _count++;
    notifyListeners();
  }
}
