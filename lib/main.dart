import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Text(
            'Ini Aplikasi',
            style: TextStyle(fontSize: 24, color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}
