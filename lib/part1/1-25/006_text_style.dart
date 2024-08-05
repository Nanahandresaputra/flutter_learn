import 'package:flutter/material.dart';

class TextStyleLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Text Style Learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text(
            'Ini adalah text',
            style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.overline,
                decorationColor: Colors.red,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.dashed),
          ),
        ),
      ),
    );
  }
}
