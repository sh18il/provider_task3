import 'package:flutter/material.dart';

class Change extends ChangeNotifier {
  bool colur = true;

  Value() {
    colur = !colur;
    notifyListeners();
  }
}
