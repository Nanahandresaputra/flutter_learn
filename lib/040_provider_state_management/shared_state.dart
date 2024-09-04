import 'package:flutter/material.dart';

class AplicationColor with ChangeNotifier {
  bool _isBool = true;
  Color _color = Colors.amber;

  bool get isBoolData => _isBool;
  Color get colorData => _color;

  set isBool(bool isBool) => {_isBool = isBool, notifyListeners()};
  set color(Color color) => {_color = color, notifyListeners()};
}
