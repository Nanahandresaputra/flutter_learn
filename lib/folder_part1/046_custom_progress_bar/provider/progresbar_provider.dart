import 'package:flutter/material.dart';

class TimeProgress with ChangeNotifier {
  int _value = 15;

  int get valueData => _value;

  set value(value) => {_value = value, notifyListeners()};
}
