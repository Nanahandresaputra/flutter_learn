import 'package:flutter/material.dart';

class SpacerWidgetLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Spacer Widget Learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Container(
                height: 70,
                width: 70,
                color: Colors.red,
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                height: 70,
                width: 70,
                color: Colors.blue.shade900,
              ),
              Spacer(),
              Container(
                height: 70,
                width: 70,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
