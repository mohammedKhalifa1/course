import 'package:flutter/material.dart';

class QuranModel extends ChangeNotifier {
  int i = 0;
  int active = 0;
  double heightContainer = 0;
  changeState() {
    active = active == 0 ? 1 : 0;
    heightContainer = heightContainer == 50 ? 0 : 50;
    notifyListeners();
  }

  changeIndex(val) {
    i = val - 1;
    notifyListeners();
  }
}
