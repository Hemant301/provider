import 'package:flutter/material.dart';

class FavProvider with ChangeNotifier {
  List<int> _slectedIndex = [];
  List<int> get slectedIndex => _slectedIndex;

  void setSlectedIndex(int index) {
    if (_slectedIndex.contains(index)) {
      _slectedIndex.remove(index);
    } else {
      _slectedIndex.add(index);
    }

    notifyListeners();
  }
}
