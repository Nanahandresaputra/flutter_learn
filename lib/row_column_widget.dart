import 'package:flutter/material.dart';

class RowColumnWidgetLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        // toolbarHeight: 20,
        title: const Text(
          'Learn Row and Column widget',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 82, 169, 240),
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Text satu',
            style: TextStyle(color: Colors.red),
          ),
          Text('Text dua')
        ],
      ),
    ));
  }
}
