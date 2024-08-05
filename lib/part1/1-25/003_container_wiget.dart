import 'package:flutter/material.dart';

// padding and margin
class ContainerWigetLearn1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Learn Container Widge : padding and margin',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Color.fromARGB(255, 197, 220, 240),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Container(
              color: Color.fromARGB(255, 241, 179, 174),
              margin:
                  EdgeInsets.fromLTRB(10, 20, 30, 0) // Left, Top, Right, Bottom
              ),
        ),
      ),
    );
  }
}

// decoration

class ContainerWigetLearn2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Learn Container Widge : decoration',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Color.fromARGB(255, 73, 141, 197),
                    Colors.green
                  ])),
        ),
      ),
    );
  }
}
