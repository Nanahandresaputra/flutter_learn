import 'package:flutter/material.dart';

class SwitchAndAnimatedSwitcherLearn extends StatefulWidget {
  @override
  _SwitchAndAnimatedSwitcherLearnState createState() =>
      _SwitchAndAnimatedSwitcherLearnState();
}

class _SwitchAndAnimatedSwitcherLearnState
    extends State<SwitchAndAnimatedSwitcherLearn> {
  bool _isOn = false;

  Widget _MyWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      color: Colors.amber,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Switch & AnimationSwitcher',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AnimatedSwitcher(
                  duration: Duration(seconds: 1),
                  child: _MyWidget,
                  transitionBuilder: (child, animation) =>
                      // RotationTransition(turns: animation, child: child),
                      ScaleTransition(
                        scale: animation,
                        child: child,
                      )),
              Switch(
                  activeColor: Colors.green,
                  inactiveTrackColor: Colors.lightBlue.shade100,
                  inactiveThumbColor: Colors.lightBlue,
                  value: _isOn,
                  onChanged: (value) {
                    _isOn = value;
                    setState(() {
                      if (_isOn) {
                        _MyWidget = Container(
                          key: ValueKey(1),
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.green,
                          ),
                        );
                      } else {
                        _MyWidget = Container(
                          key: ValueKey(2),
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.amber,
                          ),
                        );
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
