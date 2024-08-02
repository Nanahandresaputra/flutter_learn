import 'package:flutter/material.dart';

class FlexibelWidgetLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Flexible Widget Learn',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue.shade900,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.green.shade900,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.yellow.shade900,
                      ),
                    ),
                  ],
                )),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.red,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.orange,
                )),
          ],
        ),
      ),
    );
  }
}
