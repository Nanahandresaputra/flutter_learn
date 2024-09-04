import 'package:flutter/material.dart';

class AnimatedPaddingLearn extends StatefulWidget {
  @override
  _AnimatedPaddingLearnState createState() => _AnimatedPaddingLearnState();
}

class _AnimatedPaddingLearnState extends State<AnimatedPaddingLearn> {
  double _paddingVal = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Animated Padding',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _paddingVal = _paddingVal == 10 ? 3 : 10;
                            });
                          },
                          child: AnimatedPadding(
                            duration: Duration(seconds: 1),
                            padding: EdgeInsets.all(_paddingVal),
                            child: Container(
                              color: Colors.red,
                            ),
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(_paddingVal),
                          child: Container(
                            color: Colors.green,
                          ),
                        )),
                  ],
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(_paddingVal),
                          child: Container(
                            color: Colors.blue,
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: AnimatedPadding(
                          duration: Duration(seconds: 1),
                          padding: EdgeInsets.all(_paddingVal),
                          child: Container(
                            color: Colors.yellow,
                          ),
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
