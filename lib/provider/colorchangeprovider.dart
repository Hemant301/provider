import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';

class ColorChangeProvider with ChangeNotifier {
  double _value = 1.0;
  double get value => _value;

  void setop(double value) {
    _value = value;
    notifyListeners();
  }
}
