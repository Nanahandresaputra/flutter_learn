import 'package:flutter/material.dart';

class Money with ChangeNotifier {
  int _balance = 10000;

  int get balanceData => _balance;

  set balance(int balance) => {_balance = balance, notifyListeners()};
}
