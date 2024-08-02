import 'package:flutter/material.dart';

class StatefulWidgetLearn extends StatefulWidget {
  @override
  _StatefulWidgetLearnState createState() => _StatefulWidgetLearnState();
}

class _StatefulWidgetLearnState extends State<StatefulWidget> {
  int number = 0;

  void pressBtnPlus() {
    setState(() {
      number = number + 1;
    });
  }

  void pressBtnMin() {
    setState(() {
      if (number > 0) {
        number = number - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'StatefulWidget Learn',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  number.toString(),
                  style: TextStyle(
                      fontSize: 20 + number.toDouble(),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: ElevatedButton(
                        onPressed: pressBtnMin, child: Text('Min (-)')),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: pressBtnPlus,
                      child: Text('Plus (+)'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
