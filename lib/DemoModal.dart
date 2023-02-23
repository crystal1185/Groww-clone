import 'package:flutter/material.dart';

class DemoModal with ChangeNotifier {
  int value = 0;
  String Data = "No data";
  String MobileData = "No Number";
  void increment() {
    value = value + 1;
    notifyListeners();
  }

  void decrement() {
    value = value - 1;
    notifyListeners();
  }

  void updatedData(
      TextEditingController updatedvalue, TextEditingController updatedMobile) {
    Data = updatedvalue.text;
    MobileData = updatedMobile.text;
    notifyListeners();
  }
}
