import 'dart:async';

import 'package:flutter/material.dart';

class TimerLearn extends StatefulWidget {
  @override
  _TimerLearnState createState() => _TimerLearnState();
}

class _TimerLearnState extends State<TimerLearn> {
  int _counter = 0;
  bool _isBlack = false;
  bool _isStop = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Timer Learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue.shade900, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.only(bottom: 20),
                  color: _isBlack ? Colors.black : Colors.red,
                ),
                Text('$_counter',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Timer.run(() {
                      setState(() {
                        _isBlack = !_isBlack;
                      });
                    });
                  },
                  child: Text(
                    'ubah warna langsung',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade800,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Timer(Duration(seconds: 5), () {
                        setState(() {
                          _isBlack = !_isBlack;
                        });
                      });
                    },
                    child: Text('ubah warna setelah 5 detik kemudian',
                        style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade800,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          _counter = 0;
                          _isStop = false;
                          Timer.periodic(Duration(seconds: 1), (timer) {
                            if (_isStop) timer.cancel();
                            setState(() {
                              _counter++;
                            });
                          });
                        },
                        child: Text('start timer',
                            style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue.shade800,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)))),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _isStop = true;
                          });
                        },
                        child: Text('stop timer',
                            style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade800,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
