import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  int _appleValue = 0;
  int _totalPrice = 0;

  int get appleVal => _appleValue;
  int get totalPriceData => _totalPrice;

  set appleValue(int appleValue) =>
      {_appleValue += appleValue, notifyListeners()};
  set totalPrice(int totalPrice) =>
      {_totalPrice = totalPrice, notifyListeners()};
}
