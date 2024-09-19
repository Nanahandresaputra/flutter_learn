import 'package:flutter/material.dart';

class CustomProgressBarWidget extends StatelessWidget {
  final double? width;
  final int? value;
  final int? totalValue;

  CustomProgressBarWidget({this.width, this.value, this.totalValue});

  @override
  Widget build(BuildContext context) {
    double ratio = value! / totalValue!;
    double widthRatio = width! * ratio;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 5),
          child: Icon(Icons.access_time_sharp),
        ),
        Stack(
          children: [
            Container(
              width: width,
              height: 12,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: widthRatio,
              height: 12,
              decoration: BoxDecoration(
                color: ratio < 0.5 && ratio > 0.2
                    ? Colors.amber
                    : ratio < 0.3
                        ? Colors.red
                        : Colors.lightGreen,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        )
      ],
    );
  }
}
