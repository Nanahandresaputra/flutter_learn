import 'package:flutter/material.dart';

class TextWidgetLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Learn Text widget'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            color: Color.fromARGB(255, 191, 112, 255),
            width: 300,
            height: 200,
            child: Text(
              'Ini Aplikasi flutter pertama saya',
              // maxLines: 2,
              // overflow: TextOverflow.ellipsis,
              // softWrap: false,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.blueAccent,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
