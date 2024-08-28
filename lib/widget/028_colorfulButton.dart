import 'package:flutter/material.dart';
import 'dart:math';

//ignore: must_be_immutable
class ColorfulButton extends StatefulWidget {
  Color? mainColor, secondaryColor;
  IconData? icon;
  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor, secondaryColor, icon);

  ColorfulButton(this.mainColor, this.secondaryColor, this.icon);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  Color? mainColor, secondaryColor;
  IconData? icon;

  bool _isPress = false;

  _ColorfulButtonState(this.mainColor, this.secondaryColor, this.icon);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: 50,
            width: 50,
            child: Transform.rotate(
              angle: pi / 4,
              child: GestureDetector(
                onTapDown: (details) {
                  setState(() {
                    _isPress = !_isPress;
                  });
                },
                onTapCancel: () {
                  setState(() {
                    _isPress = !_isPress;
                  });
                },
                child: Material(
                  elevation: _isPress ? 5 : 10,
                  color: _isPress ? mainColor : secondaryColor,
                  borderRadius: BorderRadius.circular(8),
                  child: Transform.rotate(
                    angle: -pi / 4,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30, 30),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Material(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30, 30),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Material(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30, -30),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Material(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-30, -30),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Material(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-30, 30),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Material(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
