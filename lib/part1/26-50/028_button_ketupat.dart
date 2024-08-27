import 'package:flutter/material.dart';
import 'package:flutter_learn/part1/028_colorfulButton.dart';

class ButtonKetupat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              'Button Ketupat',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ColorfulButton(Colors.red, Colors.green, Icons.adb),
                ColorfulButton(Colors.blue, Colors.yellow, Icons.computer),
                ColorfulButton(
                    Colors.purple.shade900, Colors.teal, Icons.car_crash),
              ],
            ),
          )),
    );
  }
}
