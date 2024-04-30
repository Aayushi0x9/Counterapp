import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  int Counter = 0;
  bool isIncrement = true;

  void Increament() {
    Counter++;
    notifyListeners();
  }

  void Decreament() {
    Counter--;
    notifyListeners();
  }
}
