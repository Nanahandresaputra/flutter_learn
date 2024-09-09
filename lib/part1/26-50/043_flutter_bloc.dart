import 'package:flutter/material.dart';

class FlutterBloCLearn extends StatefulWidget {
  @override
  _FlutterBloCLearnState createState() => _FlutterBloCLearnState();
}

class _FlutterBloCLearnState extends State<FlutterBloCLearn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Flutter_BloC Learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.amber,
              focusColor: Colors.amber.shade600,
            ),
            SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blue,
              focusColor: Colors.blue.shade600,
            ),
          ],
        ),
        body: Center(
            child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.amber),
        )),
      ),
    );
  }
}
