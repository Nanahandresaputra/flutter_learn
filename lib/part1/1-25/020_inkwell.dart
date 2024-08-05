import 'package:flutter/material.dart';

class InkWellLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'InkWell Learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: Text('ElevatedButton',
                    style: TextStyle(color: Colors.white)),
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blue[900]),
              ),
              Material(
                elevation: 2,
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                          begin: FractionalOffset.topLeft,
                          end: FractionalOffset.bottomRight,
                          colors: [
                            Colors.purple.shade900,
                            Colors.red.shade900
                          ])),
                  child: Material(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {},
                      splashColor: Colors.red,
                      child: Center(
                        child: Text(
                          'InkWell',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
